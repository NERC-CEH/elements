#' Plot the ALE values for a taxon and set of variables
#' 
#' Plot the Accumulated Local Effect (ALE) values for a selected taxon and
#' variables.
#'
#' @param taxon A Taxon Version Key (TVK). String.
#' @param vars A vector of variables. Must include atleast one of the following columns: "DG", "DS", "F", "L/H", "MAP", "N", "R", "S", "Tmax07", and "Tmin01".
#'
#' @return A composite plot showing the ALE effects for each model variable
#' @export
#'
#' @examples elemental::plot_ale(taxon = "NBNSYS0000004288", vars = c("L", "F", "N", "R", "DG", "DS", "Tmin01", "Tmax07", "MAP", "S", "WRONGVAR"))
plot_ale <- function(taxon, vars){
  
  # Retrieve data for taxon
  data <- elemental::marginalEffects
  data_taxon <- data[data[["species"]] == taxon, ]

  # Retrieve available vars
  available_vars <- intersect(vars, unique(data_taxon$variable))
  n_vars <- length(available_vars)
  
  # Clear plots
  graphics::plot.new()
  
  # Calculate the number of columns and rows
  # There are 10 possible variables: L/H, F, N, R, DG, DS, Tmin01, Tmax07, MAP, S
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
  }
  
  par(mfrow = c(nrows, ncols))
  
  # For each variable in available_vars produce a plot
  for(var in available_vars){
      
    data_var <- data_taxon[data_taxon[["variable"]] == var, ]
    graphics::plot(x = data_var[, "x"], y = data_var[, "y"], xlab = var, ylab = "ALE [-]", type = "l")
    graphics::abline(h = 0)
    
  }
  
  # Record plot
  plot <- recordPlot()
  
  return(plot)
  
}