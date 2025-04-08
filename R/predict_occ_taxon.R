#' Generate predictions for the probability of occurrence
#' 
#' Generate predictions for the probability of occurrence (presence and/or absence) for a given taxon.
#'
#' NOTE: to use this function you must first run `elements::startup()`
#'
#' @param taxon The taxon_code, see `elements::TaxaBackbone`.
#' @param predictors A data frame of predictors. Must include the following columns: L, M, N, R, S, SD, GP, bio05, bio06, bio16, and bio17
#' @param pa One of "Present", "Absent", or c("Present", "Absent").
#' @param limit A string representing the niche width quantiles, one of "min_max", "q01_q99", "q05_q95", "q25_q75". Which if set assigns a probability of 0 to a set of predictors if one or more of those predictors are outside the stipulated quantile ranges. Only applied if pa = "Present". Optional.
#' @param dp The number of decimal places to round the probability values to.
#' @param append_predictors A boolean. If TRUE return the predictors data frame with the results in an additional column.
#'
#' @return A data frame containing the probability of occurrence (Present and/or Absent), if specified, appended to the predictors data.
#' @export
#' 
#' @examples
#' \dontrun{
#' elements::startup()
#' elements::predict_occ_taxon(taxon = "stellaria_graminea", predictors = elements::ExampleData1, pa = "Present", limit = NULL, dp = 3, append_predictors = TRUE)
#' elements::shutdown() 
#' }
predict_occ_taxon <- function(taxon, predictors, pa = "Present", limit = NULL, dp = 3, append_predictors = TRUE){
  
  if(isFALSE(exists(x = "OccModels", envir = .GlobalEnv))){
    stop("Please run elements::startup() before using elements::predict_occ.")
  }
  
  model <- .GlobalEnv$OccModels[[taxon]]
  
  predictions <- e1071:::predict.svm(object = model, predictors, probability = TRUE)
  
  predictions_df <- round(as.data.frame(attr(predictions, "probabilities")[, pa, drop = FALSE]), digits = dp)
  
  if(!is.null(limit) & isTRUE(pa == "Present")){
    
    nw <- elements::NicheWidthsAllData
    nw_taxon <- subset(nw[nw[["taxon_code"]] == taxon, ], select = -taxon_code)
    nw_taxon <- setNames(data.frame(t(nw_taxon[,-1])), nw_taxon[[1]])
    
    if(limit == "min_max"){
      
      lower <- nw_taxon["min",]
      upper <- nw_taxon["max",]
      
    } else if(limit == "q01_q99"){
      
      lower <- nw_taxon["q01",]
      upper <- nw_taxon["q99",]
      
    } else if(limit == "q05_q95"){
      
      lower <- nw_taxon["q05",]
      upper <- nw_taxon["q95",]
      
    } else if(limit == "q25_q75"){
      
      lower <- nw_taxon["q25",]
      upper <- nw_taxon["q75",]
      
    }
    
    vars <- colnames(lower)
    
    predictions_limited <- cbind(predictors, predictions_df)
    
    for(var in vars){
      predictions_limited[["Present"]] <- ifelse(predictions_limited[[var]] > upper[[var]], 0, predictions_limited[["Present"]])
      predictions_limited[["Present"]] <- ifelse(predictions_limited[[var]] < lower[[var]], 0, predictions_limited[["Present"]])
    }
    
    results_final <- predictions_limited[,"Present"]
    
  } else {
    
    results_final <- predictions_df
  }
  
  if(isTRUE(append_predictors)){
    results_final <- cbind(predictors, results_final)
  }
  
  return(results_final)
  
}
