#' Plot the marginal effect values for one or more taxa and set of variables
#' 
#' @description 
#' Plot the Accumulated Local Effect (ALE) or Partial Dependence Profile (PDP) (Molnar, 2018; Molnar, 2022)
#' marginal effect curves for one or more taxa and a set of variables.
#' 
#' @details 
#' If the number of taxa is one, setting the 'presences' argument to TRUE a box and whiskers plot showing the distribution of presences is 
#' overlaid and by setting the 'eivs' argument to TRUE a point and arrows showing the EIV and niche width values are overlaid, 
#' where available in `elements::VariableData`.
#' 
#' The presence-absence imbalance in the training data varies by taxon.
#' This 'ghost of imbalance' (Jiménez-Valverde & Lobo, 2006)
#' has several impacts on the PDP plots:
#' 
#' 1) the optimum value of the PDP curve may be less than 1.
#' 2) the entire PDP curve may sit below y = 0.5 (the presence-absence threshold).
#' 
#' When inspecting the PDP plots, it is therefore important to pay more attention 
#' to the shape of the response, rather than the absolute PDP value.
#' However, by setting the normalise argument to TRUE, the PDP plot data is transformed
#' using min-max normalisation/re-scaling.
#' 
#' In some instances the ALE curves may reflect 'inverted' responses which are not ecologically realistic, 
#' this is most often seen in situations where the distribution of presences along a variable gradient is extremely narrow
#' and/or where there is a non-unimodal distribution, which causes extrapolation issues in the ALE calculations.
#' For example, *Gymnocarpium robertianum* has a extremely narrow distribution of plot-mean S values, with a maximum value of 1.
#' In these instances it is important to also visualise the PDP plots, which should then be prioritised when inspecting 
#' the shape of the univariate response.
#'
#' @param taxa A vector of one or more taxon_code strings, see `elements::TaxonomicBackbone`.
#' @param me_type A string representing the marginal effect plot type, one of "ale" or "pdp".
#' @param free_y A boolean. If TRUE the Y axis scales are independent and free for all subplots. If FALSE the Y axis scales are fixed between all subplots.
#' @param presences A boolean. If TRUE a box and whiskers plot showing the distribution of presences along each variable will be displayed.
#' @param eivs A boolean. If TRUE a point representing the EIV value and arrows representing the EIV niche widths for the taxon will be displayed, where available in `elements::VariableData`.
#' @param normalise A boolean. If TRUE and me_type == "pdp" the y axes are normalised using min-max re-scaling.
#' @param vars A vector of variables. Must include atleast one of the following columns: "L", "M", "N", "R", "S", "SD", "GP", "bio05", "bio06", "bio16", and "bio17".
#' @param lmw The width of the outer margin containing the legend, passed to the "oma" argument of `graphics::par`. Adjust to ensure the legend is given enough room.
#' @param lts The size of the legend text, passed to the "cex" argument of `graphics::legend`. Adjust to ensure the legend text size is appropriate.
#'
#' @return A composite plot showing the marginal effects and optionally the distribution of presences for selected model variables.
#' @export
#'
#' @examples 
#' elements::plot_me(taxa = "ajuga_reptans", me_type = "ale", free_y = FALSE, presences = TRUE, eivs = TRUE, normalise = TRUE, vars = c("L", "M", "N", "R", "S", "SD", "GP", "bio05", "bio06", "bio16", "bio17"))
#' 
#' elements::plot_me(taxa = c("galium_boreale", "galium_sylvaticum", "galium_uliginosum"), me_type = "ale", free_y = FALSE, presences = TRUE, normalise = TRUE, eivs = TRUE, vars = c("L", "M", "N", "R", "S", "SD", "GP", "bio05", "bio06", "bio16", "bio17"))
#' 
#' @references 
#' Jiménez-Valverde, A., Lobo, J.M., 2006. The ghost of unbalanced species distribution data in geographical model predictions. Diversity and Distributions 12, 521–524. https://doi.org/10.1111/j.1366-9516.2006.00267.x
#' 
#' Molnar, C., 2018. iml: An R package for Interpretable Machine Learning. Journal of Open Source Software 3, 786. https://doi.org/10.21105/joss.00786
#'
#' Molnar, C., 2022. Interpretable Machine Learning: A Guide For Making Black Box Models Explainable. Independently published, Munich, Germany.

plot_me <- function(taxa, me_type = "pdp", free_y = TRUE, presences = TRUE, eivs = TRUE, normalise = TRUE, vars = c("L", "M", "N", "R", "S", "SD", "GP", "bio05", "bio06", "bio16", "bio17"), lmw = 15, lts = 0.75){
  
  if(isFALSE(taxa %in% elements::TaxonomicBackbone[["taxon_code"]])){
    
    absent_taxa <- paste0(setdiff(taxa, elements::TaxonomicBackbone[["taxon_code"]]), collapse = ", ")
    
    stop(paste0("The taxa: ", absent_taxa, ", are not included. Please only select taxon_code values from the `elements::TaxonomicBackbone` taxon_code column."))
    
  }
  
  n_taxa <- length(taxa)
  
  if(n_taxa > 8){
    stop("Please select less than 8 taxa.")
  }
  
  multiple_taxa <- n_taxa > 1
  
  if(isTRUE(multiple_taxa)){
    eivs <- FALSE
    presences <- FALSE
  }
  
  if(isFALSE(multiple_taxa)){
    taxon_name <- subset(elements::TaxonomicBackbone, taxon_code == taxa, select = taxon_name, drop = TRUE)
  }
  
  if(me_type == "ale"){
    
    data <- elements::ALEData
    ab_line <- 0
    ylab <- "ALE [-]"
    
  }else if(me_type == "pdp"){
    
    data <- elements::PDPData
    ab_line <- 0.5
    ylab <- "PDP [-]"
    
  }
  
  data_taxa <- subset(data, taxon_code %in% taxa)
  
  if(isTRUE(normalise) & me_type == "pdp"){
    
    data_taxa_split <- split(data_taxa, list(data_taxa$taxon_code, data_taxa$variable))
    
    data_taxa_norm <- lapply(data_taxa_split, 
                             FUN = function(x){
                               max_y <- max(x[["y"]])
                               min_y <- min(x[["y"]])
                               x[["y"]] <- (x[["y"]] - min_y)/(max_y - min_y)
                               return(x)
                               }
                             )
    
    data_taxa_norm <- do.call(rbind, data_taxa_norm)
    
    rownames(data_taxa_norm) <- NULL
    
    data_taxa <- data_taxa_norm
    
  }
  
  if(isTRUE(presences)){
    nw <- elements::NicheWidths
    nw_taxon <- nw[nw[["taxon_code"]] == taxa, ]
  }
  
  available_vars <- intersect(vars, unique(data_taxa$variable))
  n_vars <- length(available_vars)
  
  if(n_vars == 1){
    ncols <- 1
    nrows <- 1
  }else if(n_vars == 2){
    ncols <- 2
    nrows <- 1
  }else if(n_vars %in% c(3, 4)){
    ncols <- 2
    nrows <- 2
  }else if(n_vars %in% c(5, 6)){
    ncols <- 2
    nrows <- 3
  }else if(n_vars %in% c(7, 8, 9)){
    ncols <- 3
    nrows <- 3
  }else if(n_vars %in% c(10, 11)){
    ncols <- 3
    nrows <- 4
  }
  
  graphics::plot.new()
  
  if(isFALSE(multiple_taxa)){
    
    suppressWarnings(graphics::par(mfrow = c(nrows, ncols), 
                                   mgp = c(2, 1, 0), 
                                   mar = c(3, 3, 1, 1) + 0.1, 
                                   din = c(5, 5), 
                                   xpd = FALSE, 
                                   no.readonly = TRUE))
    
  }else if (isTRUE(multiple_taxa)) {
    
    suppressWarnings(graphics::par(mfrow = c(nrows, ncols), 
                                   mgp = c(2, 1, 0), 
                                   mar = c(3, 3, 1, 1) + 0.1, 
                                   din = c(6, 5), 
                                   oma = c(0, 0, 0, lmw), 
                                   xpd = FALSE, 
                                   no.readonly = TRUE))
    
  }
  
  max_y_taxa <- max(data_taxa[["y"]])
  min_y_taxa <- min(data_taxa[["y"]])
  
  if(isTRUE(eivs)){
    eiv_vals <- elements::VariableData
    eiv_vals_taxon <- eiv_vals[eiv_vals[["taxon_name"]] == taxon_name, ]
  }
  
  for(var in available_vars){
    
    data_var <- subset(data_taxa, variable == var)
    max_y_var <- max(data_var[["y"]])
    min_y_var <- min(data_var[["y"]])
    
    if(isTRUE(free_y)){
      
      if(me_type == "pdp"){
        
        bp_width <- diff(c(min_y_var, max_y_var))/10
        bp_hwidth <- bp_width/2
        bp_centre <- max_y_var + bp_width
        ylim_upper <- max_y_var + (bp_width * 2)
        ylim <- c(0, ylim_upper)
        
      }
      
      else if(me_type == "ale"){
        
        bp_width <- diff(c(min_y_var, max_y_var))/10
        bp_hwidth <- bp_width/2
        bp_centre <- max_y_var + bp_width
        ylim <- c(min_y_var - bp_width, max_y_var + (bp_width * 2))
        
      }
      
      eiv_y <- (max_y_var + (bp_centre - bp_hwidth))/2
      
    }else if(isFALSE(free_y)){
      
      if(me_type == "pdp"){
        
        bp_width <- diff(c(min_y_taxa, max_y_taxa))/10
        bp_hwidth <- bp_width/2
        bp_centre <- max_y_var + bp_width
        ylim <- c(0, max_y_taxa + (bp_width * 2))
        
      }else if(me_type == "ale"){
        
        bp_width <- diff(c(min_y_taxa, max_y_taxa))/10
        bp_hwidth <- bp_width/2
        bp_centre <- max_y_var + bp_width
        ylim <- c(min_y_taxa - bp_width, max_y_taxa + (bp_width * 2))
        
      }
      
      eiv_y <- (max_y_var + (bp_centre - bp_hwidth))/2
      
    }
    
    if(isTRUE(eivs)){
      if(nrow(eiv_vals_taxon) > 0 & var %in% c("M", "N", "R", "L")){
        
        eiv_val <- eiv_vals_taxon[[var]]
        eiv_nw <- eiv_vals_taxon[[paste0(var, ".nw")]]/2
        
      }else if(nrow(eiv_vals_taxon) > 0 & var %in% c("GP", "SD", "S")){
        
        eiv_val <- eiv_vals_taxon[[var]]
        eiv_nw <- NULL
        
      }else{
        
        eiv_val <- NULL
        eiv_nw <- NULL
        
      }
      
    }
    
    if(isTRUE(multiple_taxa)){
      
      graphics::plot(NULL, xlim = c(min(data_var[["x"]]), max(data_var[["x"]])), ylim = ylim, xlab = var, ylab = ylab)
      
      i <- 0
      
      for (taxon in taxa) {
        
        i <- i + 1
        
        data_var_taxon <- subset(data_var, taxon_code == taxon)
        
        graphics::lines(x = data_var_taxon[["x"]], y = data_var_taxon[["y"]], col = palette.colors()[i + 1])
        
        graphics::abline(h = ab_line)
        
      }
      
    }else if(isFALSE(multiple_taxa) & isFALSE(presences) & isFALSE(eivs)){
      
      graphics::plot(x = data_var[["x"]], y = data_var[["y"]], xlab = var, ylab = ylab, type = "l", ylim = ylim)
      
      graphics::abline(h = ab_line)
      
    }else if(isFALSE(multiple_taxa) & isFALSE(presences) & isTRUE(eivs)){
      
      graphics::plot(NULL, xlim = c(min(data_var[["x"]]), max(data_var[["x"]])), ylim = ylim, xlab = var, ylab = ylab)
      
      graphics::abline(h = ab_line)
      
      if(!is.null(eiv_val)){
        graphics::points(x = eiv_val, y = eiv_y, col = "blue", 
                         bg = "blue", pch = 21)
      }
      
      if(!is.null(eiv_nw)){
        
        graphics::arrows(x0 = eiv_val, x1 = eiv_val + eiv_nw, y0 = eiv_y, y1 = eiv_y, 
                         col = "blue", bg = "blue", angle = 30, length = 0.1)
        
        graphics::arrows(x0 = eiv_val, x1 = eiv_val - eiv_nw, y0 = eiv_y, y1 = eiv_y, 
                         col = "blue", bg = "blue", angle = 30, length = 0.1)
        
      }
      
      graphics::lines(x = data_var[["x"]], y = data_var[["y"]])
      
    }else if(isFALSE(multiple_taxa) & isTRUE(presences) & isFALSE(eivs)){
      
      nw_taxon_var <- nw_taxon[nw_taxon[["variable"]] == var, ]
      
      graphics::plot(NULL, xlim = c(min(data_var[["x"]]), max(data_var[["x"]])), ylim = ylim, xlab = var, ylab = ylab)
      
      graphics::abline(h = ab_line)
      
      graphics::segments(x0 = nw_taxon_var$min, x1 = nw_taxon_var$min, y0 = bp_centre - bp_hwidth, y1 = bp_centre + bp_hwidth)
      graphics::segments(x0 = nw_taxon_var$max, x1 = nw_taxon_var$max, y0 = bp_centre - bp_hwidth, y1 = bp_centre + bp_hwidth)
      graphics::segments(x0 = nw_taxon_var$median, x1 = nw_taxon_var$median, y0 = bp_centre - bp_hwidth, y1 = bp_centre + bp_hwidth)
      graphics::segments(x0 = nw_taxon_var$q25, x1 = nw_taxon_var$q25, y0 = bp_centre - bp_hwidth, y1 = bp_centre + bp_hwidth)
      graphics::segments(x0 = nw_taxon_var$q75, x1 = nw_taxon_var$q75,  y0 = bp_centre - bp_hwidth, y1 = bp_centre + bp_hwidth)
      graphics::segments(x0 = nw_taxon_var$q25, x1 = nw_taxon_var$q75, y0 = bp_centre + bp_hwidth, y1 = bp_centre + bp_hwidth)
      graphics::segments(x0 = nw_taxon_var$q25, x1 = nw_taxon_var$q75, y0 = bp_centre - bp_hwidth, y1 = bp_centre - bp_hwidth)
      graphics::segments(x0 = nw_taxon_var$min, x1 = nw_taxon_var$q25, y0 = bp_centre, y1 = bp_centre)
      graphics::segments(x0 = nw_taxon_var$q75, x1 = nw_taxon_var$max, y0 = bp_centre, y1 = bp_centre)
      graphics::lines(x = data_var[["x"]], y = data_var[["y"]])
      
    }else if(isFALSE(multiple_taxa) & isTRUE(presences) & isTRUE(eivs)){
      
      nw_taxon_var <- nw_taxon[nw_taxon[["variable"]] == var, ]
      
      graphics::plot(NULL, xlim = c(min(data_var[["x"]]), max(data_var[["x"]])), ylim = ylim, xlab = var, ylab = ylab)
      
      graphics::abline(h = ab_line)
      
      graphics::segments(x0 = nw_taxon_var$min, x1 = nw_taxon_var$min, y0 = bp_centre - bp_hwidth, y1 = bp_centre + bp_hwidth)
      graphics::segments(x0 = nw_taxon_var$max, x1 = nw_taxon_var$max, y0 = bp_centre - bp_hwidth, y1 = bp_centre + bp_hwidth)
      graphics::segments(x0 = nw_taxon_var$median, x1 = nw_taxon_var$median, y0 = bp_centre - bp_hwidth, y1 = bp_centre + bp_hwidth)
      graphics::segments(x0 = nw_taxon_var$q25, x1 = nw_taxon_var$q25, y0 = bp_centre - bp_hwidth, y1 = bp_centre + bp_hwidth)
      graphics::segments(x0 = nw_taxon_var$q75, x1 = nw_taxon_var$q75,  y0 = bp_centre - bp_hwidth, y1 = bp_centre + bp_hwidth)
      graphics::segments(x0 = nw_taxon_var$q25, x1 = nw_taxon_var$q75, y0 = bp_centre + bp_hwidth, y1 = bp_centre + bp_hwidth)
      graphics::segments(x0 = nw_taxon_var$q25, x1 = nw_taxon_var$q75, y0 = bp_centre - bp_hwidth, y1 = bp_centre - bp_hwidth)
      graphics::segments(x0 = nw_taxon_var$min, x1 = nw_taxon_var$q25, y0 = bp_centre, y1 = bp_centre)
      graphics::segments(x0 = nw_taxon_var$q75, x1 = nw_taxon_var$max, y0 = bp_centre, y1 = bp_centre)
      
      
      if(!is.null(eiv_val)){
        
        graphics::points(x = eiv_val, y = eiv_y, col = "blue", 
                         bg = "blue", pch = 21, )
        
      }
      
      
      if(!is.null(eiv_nw)){
        
        graphics::arrows(x0 = eiv_val, x1 = eiv_val + 
                           eiv_nw, y0 = eiv_y, y1 = eiv_y, col = "blue", 
                         bg = "blue", angle = 30, length = 0.1)
        graphics::arrows(x0 = eiv_val, x1 = eiv_val - 
                           eiv_nw, y0 = eiv_y, y1 = eiv_y, col = "blue", 
                         bg = "blue", angle = 30, length = 0.1)
        
      }
      
      graphics::lines(x = data_var[["x"]], y = data_var[["y"]])
      
    }
    
  }
  
  if(isTRUE(multiple_taxa)){
    
    reset <- function(){
      graphics::par(mfrow = c(1, 1), oma = rep(0, 4), mar = rep(0, 4), new = TRUE, xpd = TRUE)
      graphics::plot(0:1, 0:1, type = "n", xlab = "", ylab = "", axes = FALSE)
    }
    
    reset()
    
    graphics::legend("right", title = "Taxon", 
                     inset = c(0, 0), 
                     cex = lts, 
                     legend = taxa, 
                     fill = palette.colors()[1:length(taxa) + 1],
                     ncol = 1, 
                     bty = "n")
  }
  
  plot <- grDevices::recordPlot()
  
  return(plot)
  
}
