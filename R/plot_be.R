#' Plot the bivariate effects for a taxon
#' 
#' Generate a plot containing the bivariate probability distribution of a taxon for two variables
#' generated using the Hold-At-Optima (HOA) method present in `elements::predict_occ`.
#'
#' @param taxon A string containing a taxon name as present in `elements::ModelledTaxaCodes`.
#' @param vars A vector of strings containing two variable names as present in `elements::VariableNames`
#'
#' @returns A plot containing the bivariate probability distribution of a taxon for two variables.
#' @export
#'
#' @examples
#' elements::startup(); elements::plot_be(taxon = "carex_rostrata", vars = c("tmax_sm", "tmin_wt"))
plot_be <- function(taxon, vars){
  
  dat <- setNames(expand.grid(elements::Gradients[[vars[1]]], elements::Gradients[[vars[2]]]), vars)
  res <- elements::predict_occ(taxa = taxon, predictors = dat, holdopt = setdiff(elements::VariableNames, vars))
  
  plot_dat <- setNames(cbind(dat, res["Present"]), c("x", "y", "z"))
  plot_dat["x_var"] <- vars[1]
  plot_dat["y_var"] <- vars[2]
  
  graphics.off()
  plot.new()
  
  z_mat <- xtabs(z ~ x + y, plot_dat)
  
  xlab <- subset(elements::VariableNamesLookup, variable_code == vars[1], select = variable_plot_name, drop = TRUE)
  ylab <- subset(elements::VariableNamesLookup, variable_code == vars[2], select = variable_plot_name, drop = TRUE)
  
  filled.contour(x = elements::Gradients[[vars[1]]],
                 y = elements::Gradients[[vars[2]]],
                 z = z_mat,
                 # plot.axes = {axis(1); axis(2); points(10, 10)},
                 plot.title = title(xlab = xlab,  ylab = ylab))
  
  bivar_hoa_plot <- recordPlot()
  
  return(bivar_hoa_plot)
}

