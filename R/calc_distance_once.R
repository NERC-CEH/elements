#' Calculate the euclidean distance between one set of environmental predictor variables and mutliple taxa
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
#' elements::calc_distance_once(predictors = elements::ExampleScenarios[1,])
calc_distance_once <- function(predictors, taxa = ModelledTaxaCodes, vars = elements::VariableNames, method = "median", append = "ids"){

  if(nrow(predictors) > 1){
    stop("Only one row of predictors can be provided. Use elements::calc_distance for more than one row.")
  }
  
  ids_df <- predictors[setdiff(colnames(predictors), vars)]
  
  predictors_df <- predictors[vars]
  
  predictors_mat <- as.matrix(predictors_df)
  
  optima_df <- subset(elements::NicheWidths, taxon_code %in% taxa & variable %in% vars, select = c("variable", method, "taxon_code"))
  
  optima_mat <- stats::xtabs(get(method) ~ taxon_code + variable, data = optima_df)
  
  attr(optima_mat, "class") = NULL; attr(optima_mat, "call") = NULL
  
  dist_from_optima <- sweep(optima_mat, 2, predictors_mat) ^ 2
  
  dist_from_optima_scaled <- scale(dist_from_optima, center = FALSE)
  
  taxa_results <- sqrt(rowSums(dist_from_optima_scaled))
  
  taxa_results <- data.frame("taxon_code" = names(taxa_results), "distance" = unname(taxa_results))
  
  if(append == "all"){
    results_final <- merge(predictors, taxa_results)
  } else if(append == "predictors"){
    results_final <- merge(predictors_df, taxa_results)
  } else if(append == "ids"){
    results_final <- merge(ids_df, taxa_results)
  }
  
  return(results_final)
  
}
