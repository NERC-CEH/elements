#' Plot the marginal effect values for a taxon and set of variables
#' 
#' Plot the Accumulated Local Effect (ALE) or Partial Dependence Profile (PDP)
#' marginal effect/univariate response curves for a selected taxon and variables.
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
#'
#' @param taxon The taxon_code, see `elements::TaxaBackbone`.
#' @param me_type A string representing the marginal effect plot type, one of "ale" or "pdp".
#' @param free_y A boolean. If TRUE the Y axis scales are independent and free for all subplots. If FALSE the Y axis scales are fixed between all subplots.
#' @param presences A boolean. If TRUE a box and whiskers plot showing the distribution of presences along each variable will be displayed.
#' @param eivs A boolean. If TRUE a point representing the EIV value and arrows representing the EIV niche widths for the taxon will be displayed, where available in `elements::VariableData`.
#' @param vars A vector of variables. Must include atleast one of the following columns: "L", "M", "N", "R", "S", "SD", "GP", "bio05", "bio06", "bio16", and "bio17".
#'
#' @return A composite plot showing the marginal effects and optionally the distribution of presences for selected model variables.
#' @export
#'
#' @examples elements::plot_me(taxon = "stellaria_graminea", me_type = "ale", free_y = FALSE, presences = TRUE, eivs = TRUE, vars = c("L", "M", "N", "R", "S", "SD", "GP", "bio05", "bio06", "bio16", "bio17"))
#' 
#' @references Jiménez-Valverde, A., Lobo, J.M., 2006. The ghost of unbalanced species distribution data in geographical model predictions. Diversity and Distributions 12, 521–524. https://doi.org/10.1111/j.1366-9516.2006.00267.x
plot_me <- function(taxon, me_type, free_y, presences, eivs, vars){
  
  backbone <- elements::TaxaBackbone
  
  # Check that a taxon is available
  if(isFALSE(taxon %in% backbone[["taxon_code"]])){
    stop("The taxon supplied is not modelled, please select a taxon_code from the `elements::TaxaBackbone` taxon_code column.")
  }
  
  # Retireve taxon name
  taxon_name <- backbone[backbone[["taxon_code"]] == taxon, "taxon_name"]
  
  # Retrieve data for taxon
  if(me_type == "ale"){
    
    data <- elements::ALEData
    ab_line <- 0
    ylab <- "ALE [-]"
    
  } else if(me_type == "pdp"){
    
    data <- elements::PDPData
    ab_line <- 0.5
    ylab <- "PDP [-]"
    
  }
  
  data_taxon <- data[data[["taxon_code"]] == taxon, ]
  
  if(isTRUE(presences)){
    nw <- elements::NicheWidthData
    nw_taxon <- nw[nw[["taxon_code"]] == taxon, ]
  }
  
  # Retrieve available vars
  available_vars <- intersect(vars, unique(data_taxon$variable))
  n_vars <- length(available_vars)
  
  # Calculate the number of columns and rows
  if(n_vars == 1){
    ncols <- 1
    nrows <- 1
  } else if(n_vars == 2){
    ncols <- 2
    nrows <- 1
  } else if(n_vars %in% c(3, 4)){
    ncols <- 2
    nrows <- 2
  } else if(n_vars %in% c(5, 6)){
    ncols <- 2
    nrows <- 3
  } else if(n_vars %in% c(7, 8, 9)){
    ncols <- 3
    nrows <- 3
  } else if(n_vars %in% c(10, 11)){
    ncols <- 3
    nrows <- 4
  }
  
  # Reset plot
  graphics::plot.new()
  
  # Setup plot grid
  suppressWarnings(graphics::par(mfrow = c(nrows, ncols), mgp = c(2, 1, 0), mar = c(3, 3, 1, 1) + 0.1, din = c(5, 5), no.readonly = TRUE))
  
  max_y_taxon <- max(data_taxon[["y"]])
  min_y_taxon <- min(data_taxon[["y"]])
  
  if(isTRUE(eivs)){
    eiv_vals <- elements::VariableData
    eiv_vals_taxon <- eiv_vals[eiv_vals[["taxon_name"]] == taxon_name, ]
  }
  
  # For each variable in available_vars produce a plot
  for(var in available_vars){
      
    data_var <- data_taxon[data_taxon[["variable"]] == var, ]
    
    max_y_var <- max(data_var[["y"]])
    min_y_var <- min(data_var[["y"]])
    
    if(isTRUE(free_y)){
      
      if(me_type == "pdp"){
        
        bp_width <- diff(c(min_y_var, max_y_var)) / 10
        bp_hwidth <- bp_width / 2
        bp_centre <- max_y_var + bp_width
        ylim_upper <- max_y_var + (bp_width * 2)
        ylim <- c(0, ylim_upper)
        
      } else if(me_type == "ale"){
        
        bp_width <- diff(c(min_y_var, max_y_var)) / 10
        bp_hwidth <- bp_width / 2
        bp_centre <- max_y_var + bp_width
        ylim <- c(min_y_var - bp_width, max_y_var + (bp_width * 2))
        
      }
      
      eiv_y <- (max_y_var + (bp_centre - bp_hwidth)) / 2
      
    } else if(isFALSE(free_y)){
      
      if(me_type == "pdp"){
        
        bp_width <- diff(c(min_y_taxon, max_y_taxon)) / 10
        bp_hwidth <- bp_width / 2
        bp_centre <- max_y_var + bp_width
        ylim <- c(0, max_y_taxon + (bp_width * 2))
        
      } else if(me_type == "ale"){
        
        bp_width <- diff(c(min_y_taxon, max_y_taxon)) / 10
        bp_hwidth <- bp_width / 2
        bp_centre <- max_y_var + bp_width
        ylim <- c(min_y_taxon - bp_width, max_y_taxon + (bp_width * 2))
        
      }
      
      eiv_y <- (max_y_var + (bp_centre - bp_hwidth)) / 2
      
    }
    
    if(isTRUE(eivs)){
      
      if(nrow(eiv_vals_taxon) > 0 & var %in% c("M", "N", "R", "L")){
        eiv_val <- eiv_vals_taxon[[var]]
        eiv_nw <- eiv_vals_taxon[[paste0(var, ".nw")]] / 2
      } else if(nrow(eiv_vals_taxon) > 0 & var %in% c("GP", "SD", "S")){
        eiv_val <- eiv_vals_taxon[[var]]
        eiv_nw <- NULL
      } else {
        eiv_val <- NULL
        eiv_nw <- NULL
      }
      
    }
    
    # Produce plot
    if(isFALSE(presences) & isFALSE(eivs)){
      
      graphics::plot(x = data_var[["x"]], y = data_var[["y"]], xlab = var, ylab = ylab, type = "l", ylim = ylim)
      
      graphics::abline(h = ab_line)
      
    }else if(isFALSE(presences) & isTRUE(eivs)){
      
      graphics::plot(NULL, xlim = c(min(data_var[["x"]]), max(data_var[["x"]])), ylim = ylim, xlab = var, ylab = ylab)
      
      graphics::abline(h = ab_line)
      
      if(!is.null(eiv_val)){
        graphics::points(x = eiv_val, y = eiv_y, col = "blue", bg = "blue", pch = 21)
      }
      if(!is.null(eiv_nw)){
        graphics::arrows(x0 = eiv_val, x1 = eiv_val + eiv_nw, y0 = eiv_y, y1 = eiv_y, col = "blue", bg = "blue", angle = 30, length = 0.1)
        graphics::arrows(x0 = eiv_val, x1 = eiv_val - eiv_nw, y0 = eiv_y, y1 = eiv_y, col = "blue", bg = "blue", angle = 30, length = 0.1)
      }
      
      graphics::lines(x = data_var[["x"]], y = data_var[["y"]])
      
    }else if(isTRUE(presences) & isFALSE(eivs)){
      
      nw_taxon_var <- nw_taxon[nw_taxon[["variable"]] == var, ]
      
      graphics::plot(NULL, xlim = c(min(data_var[["x"]]), max(data_var[["x"]])), ylim = ylim, xlab = var, ylab = ylab)
      
      graphics::abline(h = ab_line)
      
      graphics::segments(x0 = nw_taxon_var$min, x1 = nw_taxon_var$min, y0 = bp_centre - bp_hwidth, y1 = bp_centre + bp_hwidth) # Minimum
      graphics::segments(x0 = nw_taxon_var$max, x1 = nw_taxon_var$max, y0 = bp_centre - bp_hwidth, y1 = bp_centre + bp_hwidth) # Maximum
      graphics::segments(x0 = nw_taxon_var$median, x1 = nw_taxon_var$median, y0 = bp_centre - bp_hwidth, y1 = bp_centre + bp_hwidth) # Median
      graphics::segments(x0 = nw_taxon_var$q25, x1 = nw_taxon_var$q25, y0 = bp_centre - bp_hwidth, y1 = bp_centre + bp_hwidth) # 25th percentile
      graphics::segments(x0 = nw_taxon_var$q75, x1 = nw_taxon_var$q75, y0 = bp_centre - bp_hwidth, y1 = bp_centre + bp_hwidth) # 75th percentile
      graphics::segments(x0 = nw_taxon_var$q25, x1 = nw_taxon_var$q75, y0 = bp_centre + bp_hwidth, y1 = bp_centre + bp_hwidth) # 25th & 75th percentile line upper
      graphics::segments(x0 = nw_taxon_var$q25, x1 = nw_taxon_var$q75, y0 = bp_centre - bp_hwidth, y1 = bp_centre - bp_hwidth) # 25th & 75th percentile line lower
      graphics::segments(x0 = nw_taxon_var$min, x1 = nw_taxon_var$q25, y0 = bp_centre, y1 = bp_centre) # Centre line to 25th percentile
      graphics::segments(x0 = nw_taxon_var$q75, x1 = nw_taxon_var$max, y0 = bp_centre, y1 = bp_centre) # Centre line from 75th percentile
      
      graphics::lines(x = data_var[["x"]], y = data_var[["y"]])
      
    }else if(isTRUE(presences) & isTRUE(eivs)){
      
      nw_taxon_var <- nw_taxon[nw_taxon[["variable"]] == var, ]
      
      graphics::plot(NULL, xlim = c(min(data_var[["x"]]), max(data_var[["x"]])), ylim = ylim, xlab = var, ylab = ylab)
      
      graphics::abline(h = ab_line)
      
      graphics::segments(x0 = nw_taxon_var$min, x1 = nw_taxon_var$min, y0 = bp_centre - bp_hwidth, y1 = bp_centre + bp_hwidth) # Minimum
      graphics::segments(x0 = nw_taxon_var$max, x1 = nw_taxon_var$max, y0 = bp_centre - bp_hwidth, y1 = bp_centre + bp_hwidth) # Maximum
      graphics::segments(x0 = nw_taxon_var$median, x1 = nw_taxon_var$median, y0 = bp_centre - bp_hwidth, y1 = bp_centre + bp_hwidth) # Median
      graphics::segments(x0 = nw_taxon_var$q25, x1 = nw_taxon_var$q25, y0 = bp_centre - bp_hwidth, y1 = bp_centre + bp_hwidth) # 25th percentile
      graphics::segments(x0 = nw_taxon_var$q75, x1 = nw_taxon_var$q75, y0 = bp_centre - bp_hwidth, y1 = bp_centre + bp_hwidth) # 75th percentile
      graphics::segments(x0 = nw_taxon_var$q25, x1 = nw_taxon_var$q75, y0 = bp_centre + bp_hwidth, y1 = bp_centre + bp_hwidth) # 25th & 75th percentile line upper
      graphics::segments(x0 = nw_taxon_var$q25, x1 = nw_taxon_var$q75, y0 = bp_centre - bp_hwidth, y1 = bp_centre - bp_hwidth) # 25th & 75th percentile line lower
      graphics::segments(x0 = nw_taxon_var$min, x1 = nw_taxon_var$q25, y0 = bp_centre, y1 = bp_centre) # Centre line to 25th percentile
      graphics::segments(x0 = nw_taxon_var$q75, x1 = nw_taxon_var$max, y0 = bp_centre, y1 = bp_centre) # Centre line from 75th percentile
      
      if(!is.null(eiv_val)){
        graphics::points(x = eiv_val, y = eiv_y, col = "blue", bg = "blue", pch = 21, )
      }
      if(!is.null(eiv_nw)){
        graphics::arrows(x0 = eiv_val, x1 = eiv_val + eiv_nw, y0 = eiv_y, y1 = eiv_y, col = "blue", bg = "blue", angle = 30, length = 0.1)
        graphics::arrows(x0 = eiv_val, x1 = eiv_val - eiv_nw, y0 = eiv_y, y1 = eiv_y, col = "blue", bg = "blue", angle = 30, length = 0.1)
      }
      
      graphics::lines(x = data_var[["x"]], y = data_var[["y"]])
      
    }
    
  }
  
  # Record plot
  plot <- grDevices::recordPlot()
  
  return(plot)
  
}
