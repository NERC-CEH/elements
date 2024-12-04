#' Generate predictions for the probability of presence
#' 
#' Generate predictions for the probability of presence (present and absent)
#' for a given taxon
#'
#' @param taxon The taxon, represented by a UKSI TVK.
#' @param predictors A data frame of predictors. Must include the following columns: "DG", "DS", "F", "L/H", "MAP", "N", "R", "S", "Tmax07", and "Tmin01".
#' @param pa One of "Present", "Absent", or c("Present", "Absent"), indicating the probabilities to return.
#'
#' @return A data frame containing the model predictions...
#' @export
#' 
#' @example elements::predict(taxon = "NBNSYS0000004288", 
#'                             predictors = data.frame("F" = c(3.86, 1),
#'                                                     "N" = c(2.71, 1),
#'                                                     "R" = c(6.57, 1),
#'                                                     "S" = c(0.571, 0.571),
#'                                                     "DG" = c(0.271, 0.271),
#'                                                     "DS" = c(0.219, 0.219),
#'                                                     "L" = c(5, 5),
#'                                                     "MAP" = c(1200, 900),
#'                                                     "Tmax07" = c(20, 25),
#'                                                     "Tmin01" = c(-1, 1)),
#'                             pa = "Present") 
predict <- function(taxon, predictors, pa = "Present"){

  # Retrieve model for a given taxon
  model <- elements::models[[taxon]]
  
  # Retrieve the model variables
  model_vars <- attr(model@terms, "term.labels")
  
  # Select variables and ensure variable values are ordered
  predictors_ordered <- predictors[, model_vars]
  
  # Generate predictions
  result <- kernlab::predict(model, predictors_ordered, type = "probabilities")
  
  # Select relevant columns
  result_final <- subset(result, select = pa)
  
  return(result_final)
  
}
