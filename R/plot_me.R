#' Plot the marginal effect values for a taxon and set of variables
#' 
#' Plot the Accumulated Local Effect (ALE) or Partial Dependence Profile (PDP)
#' marginal effect values for a selected taxon and variables.
#'
#' @param taxon The taxon_code, see `elements::ModellingSpecies` and `elements::TaxaBackbone`.
#' @param me_type A string representing the marginal effect plot type, one of "ale" or "pdp".
#' @param free_y A boolean. If TRUE the Y axis scales are independent and free for all subplots. If FALSE the Y axis scales are fixed between all subplots.
#' @param presences A boolean. If true a box and whiskers plot showing the distribution of presences along each variable will be displayed.
#' @param vars A vector of variables. Must include atleast one of the following columns: "L", "M", "N", "R", "S", "SD", "GP", "bio05", "bio06", "bio16", and "bio17".
#'
#' @return A composite plot showing the ALE effects for each model variable
#' @export
#'
#' @examples elements::plot_me(taxon = "stellaria_graminea", me_type = "ale", free_y = FALSE, presences = TRUE, vars = c("L", "M", "N", "R", "S", "SD", "GP", "bio05", "bio06", "bio16", "bio17"))
plot_me <- function(taxon, me_type, free_y, presences, vars){
  
  # Clear plots
  graphics::plot.new()
  
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
    nw <- elements::NicheWidthsAllData
    nw_taxon <- nw[nw[["taxon_code"]] == taxon, ]
  }
  
  # Retrieve available vars
  available_vars <- intersect(vars, unique(data_taxon$variable))
  n_vars <- length(available_vars)
  
  # Calculate the number of columns and rows
  if(n_vars == 1){
    ncols <- 1
    nrows <- 1
  } else if(n_vars %in% c(2, 3, 4, 5)) {
    ncols <- 2
    nrows <- 3
  } else if(n_vars %in% c(6, 7, 8, 9, 10)) {
    ncols <- 3
    nrows <- 3
  } else if(n_vars == 10) {
    ncols <- 3
    nrows <- 4
  } else if(n_vars == 11) {
    ncols <- 4
    nrows <- 4
  }
  
  graphics::par(mfrow = c(nrows, ncols), mgp = c(2, 1, 0), mar = c(3, 3, 1, 1) + 0.1, din = c(5, 5))
  
  max_y_taxon <- max(data_taxon[["y"]])
  min_y_taxon <- min(data_taxon[["y"]])
  
  # For each variable in available_vars produce a plot
  for(var in available_vars){
      
    data_var <- data_taxon[data_taxon[["variable"]] == var, ]
    
    max_y_var <- max(data_var[["y"]])
    min_y_var <- min(data_var[["y"]])
    
    if(isTRUE(free_y)){
      
      bp_width <- diff(c(min_y_var, max_y_var)) / 10
      bp_hwidth <- bp_width / 2
      bp_centre <- max_y_var + bp_hwidth * 1.5
      ylim <- c(min_y_var - bp_width, max_y_var + (bp_width * 1.5))
      
    } else if(isFALSE(free_y)){
      
      bp_width <- diff(c(min_y_taxon, max_y_taxon)) / 10
      bp_hwidth <- bp_width / 2
      bp_centre <- max_y_var + bp_hwidth * 1.5
      ylim <- c(min_y_taxon - bp_width, max_y_taxon + (bp_width * 1.5))
      
    }
    
    if(isFALSE(presences)){
      
      graphics::plot(x = data_var[["x"]], y = data_var[["y"]], xlab = var, ylab = ylab, type = "l", ylim = ylim)
      
    }else if(isTRUE(presences)){
      
      nw_taxon_var <- nw_taxon[nw_taxon[["variable"]] == var, ]
      
      graphics::plot(NULL, xlim = c(0, max(data_var[["x"]])), ylim = ylim, xlab = var, ylab = ylab)
      
      graphics::segments(x0 = nw_taxon_var$min, x1 = nw_taxon_var$min, y0 = bp_centre - bp_hwidth, y1 = bp_centre + bp_hwidth) # Minimum
      graphics::segments(x0 = nw_taxon_var$max, x1 = nw_taxon_var$max, y0 = bp_centre - bp_hwidth, y1 = bp_centre + bp_hwidth) # Maximum
      graphics::segments(x0 = nw_taxon_var$median, x1 = nw_taxon_var$median, y0 = bp_centre - bp_hwidth, y1 = bp_centre + bp_hwidth) # Median
      graphics::segments(x0 = nw_taxon_var$q25, x1 = nw_taxon_var$q25, y0 = bp_centre - bp_hwidth, y1 = bp_centre + bp_hwidth) # 25th percentile
      graphics::segments(x0 = nw_taxon_var$q75, x1 = nw_taxon_var$q75, y0 = bp_centre - bp_hwidth, y1 = bp_centre + bp_hwidth) # 75th percentile
      graphics::segments(x0 = nw_taxon_var$q25, x1 = nw_taxon_var$q75, y0 = bp_centre + bp_hwidth, y1 = bp_centre + bp_hwidth) # 25th & 75th percentile line upper
      graphics::segments(x0 = nw_taxon_var$q25, x1 = nw_taxon_var$q75, y0 = bp_centre - bp_hwidth, y1 = bp_centre - bp_hwidth) # 25th & 75th percentile line upper
      graphics::segments(x0 = nw_taxon_var$min, x1 = nw_taxon_var$q25, y0 = bp_centre, y1 = bp_centre) # Centre line to 25th percentile
      graphics::segments(x0 = nw_taxon_var$q75, x1 = nw_taxon_var$max, y0 = bp_centre, y1 = bp_centre) # Centre line from 75th percentile
      
      graphics::lines(x = data_var[["x"]], y = data_var[["y"]])
      
    }
    
    graphics::abline(h = ab_line)
    
  }
  
  # Record plot
  plot <- grDevices::recordPlot()
  
  return(plot)
  
}
