#' Generate predictions for the probability of presence
#' 
#' Generate predictions for the probability of presence (present and absent)
#' for a given taxon
#'
#' @param taxon The taxon_code, see `elements::ModellingSpecies` and `elements::TaxaBackbone`
#' @param predictors A data frame of predictors. Must include the following columns: L, M, N, R, S, SD, GP, bio05, bio06, bio16, and bio17
#' @param pa One of "Present", "Absent", or c("Present", "Absent"), indicating the probabilities to return.
#'
#' @return A data frame containing the model predictions...
#' @export
#' 
#' @example elements::predict_occ(taxon = "gymnocarpium_robertianum", 
#'                                predictors = data.frame(L = c(7.8, 7.3), 
#'                                                        M = c(2.9, 5.7),
#'                                                        N = c(3.4, 5.7), 
#'                                                        R = c(6.1, 6.5), 
#'                                                        S = c(0.2, 0.9), 
#'                                                        SD = c(0.1, 0.3), 
#'                                                        GP = c(0.3, 0.3), 
#'                                                        bio05 = c(26.2, 26.2), 
#'                                                        bio06 = c(16.1, 18.2), 
#'                                                        bio16 = c(363.6, 267.5),
#'                                                        bio17 = c(45.4, 4.1)),
#'                                pa = "Present") 
predict_occ <- function(taxon, predictors, pa = "Present"){

  model <- .GlobalEnv$OccModels[[taxon]]
  
  predictions <- e1071:::predict.svm(object = model, predictors, probability = TRUE)
  
  results <- as.data.frame(attr(predictions, "probabilities")[, pa, drop = FALSE])
  
  return(results)
  
}
