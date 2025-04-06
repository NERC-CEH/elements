#' Generate predictions for the probability of occurrence
#' 
#' Generate predictions for the probability of occurrence (presence and/or absence) for a given taxon.
#'
#' NOTE: to use this function you must first run `elements::startup()`
#'
#' @param taxon The taxon_code, see `elements::ModellingSpecies` and `elements::TaxaBackbone`.
#' @param predictors A data frame of predictors. Must include the following columns: L, M, N, R, S, SD, GP, bio05, bio06, bio16, and bio17
#' @param pa One of "Present", "Absent", or c("Present", "Absent").
#' @param dp The number of decimal places to round the probability values to.
#'
#' @return A data frame containing the probability of occurrence.
#' @export
#' 
#' @examples
#' \dontrun{
#' elements::startup()
#' elements::predict_occ(taxon = "stellaria_graminea",  predictors = elements::ExampleData, pa = "Present")
#' elements::shutdown() 
#' }
predict_occ <- function(taxon, predictors, pa = "Present", dp = 3){
  
  if(isFALSE(exists(x = "OccModels", envir = .GlobalEnv))){
    
    stop("Please run elements::startup() before using elements::predict_occ.")
  }

  model <- .GlobalEnv$OccModels[[taxon]]
  
  predictions <- e1071:::predict.svm(object = model, predictors, probability = TRUE)
  
  results <- round(as.data.frame(attr(predictions, "probabilities")[, pa, drop = FALSE]), digits = dp)
  
  return(results)
  
}
