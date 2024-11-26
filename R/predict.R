#' Generate predictions for the probability of presence
#' 
#' Generate predictions for the probability of presence (present and absent)
#' for a given species.
#'
#' @param species The species, represented by a UKSI TVK.
#' @param predictors A data frame of predictors. Must include the following columns: "DG", "DS", "F", "H", "MAP", "N", "R", "S", "Tmax07", and "Tmin01".
#' @param pa One of "Present", "Absent", or c("Present", "Absent"), indicating the probabilities to return.
#'
#' @return A data frame containing the model predictions...
#' @export
#'
predict <- function(species, predictors, pa = "Present"){

  # Retrieve model for a given species
  model <- elemental::models[[species]]
  
  # Ensure predictors are ordered
  predictors_ordered <- predictors[, dimnames(model$SV)[[2]]]
  
  # Generate predictions
  result <- e1071:::predict.svm(model, predictors_ordered, probability = TRUE)
  
  # Extract predicted probabilities as a data frame
  result_df <- as.data.frame(attr(result, "probabilities"))
  
  # Select relevant columns
  result_final <- subset(result_df, select = pa)
  
  return(result_final)
  
}
