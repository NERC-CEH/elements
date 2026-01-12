#' Calculate the euclidean distance between a set of environmental predictor variables and mutliple taxa
#'
#' @param predictors A data frame of predictors. Must include the following columns: L, M, N, R, S, SD, GP, tmax_sm, tmin_wt, prec_wt, prec_sm, and optionally taxon
#' @param taxa A vector of strings containing one or more taxa to calculate distances for. See `elements::ModelledTaxaCodes`.
#' @param vars A vector of variable names, one or more of `elements::VariableNames`.
#' @param method One of "median" or "mean" indicating whether to measure the euclidean distance from the predictor variables to the median or mean values.
#' @param append A string, one of "all", "predictors", or "ids" representing which columns from the predictors data frame to return with the results.
#'
#' @returns A data frame containing the euclidean distance for each taxon.
#' @export
#'
#' @examples
#' elements::calc_distance(predictors = elements::ExampleScenarios)
calc_distance <- function(predictors, taxa = elements::ModelledTaxaCodes, vars = elements::VariableNames, method = "median", append = "ids"){
  
  results_list <- by(data = predictors, 
                     INDICES = 1:nrow(predictors), 
                     FUN = function(x) calc_distance_once(predictors = x, taxa = taxa, vars = vars, method = method, append = append),
                     simplify = FALSE)  
  
  results <- do.call(rbind, results_list)
  
  return(results)
  
}
