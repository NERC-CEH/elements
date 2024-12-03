plot_ale <- function(taxon, vars){
  
  # taxon <- "NBNSYS0000004288"
  # vars <- c("F", "N", "R", "MAP", "L", "WRONG_VAR")
  
  # Retrieve data for taxon
  data <- elemental::marginalEffects
  data_taxon <- data[data[["species"]] == taxon, ]

  # Retrieve available vars
  available_vars <- intersect(vars, unique(data_taxon$variable))
  
  # Clear plots
  graphics::plot.new()
  
  # Calculate the number of columns and rows
  ncols <- ifelse(length(available_vars) > 2, 2, 1)
  nrows <- ifelse(ncols == 2 & length(available_vars) %% 2 == 0, length(available_vars) / 2, (length(available_vars) + 1) / 2)
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