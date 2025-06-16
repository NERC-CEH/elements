#' Generate predictions for the probability of occurrence
#' 
#' Generate predictions for the probability of occurrence (presence and/or absence) for a given taxon.
#' 
#' A number of optional arguments provide additional control over the use of the models.
#' First, using the 'limit' argument the probabilities may be set to 0 if one or 
#' more of the predictor values are outside a stipulated quantile range, 
#' e.g. the 1% and 99% quantiles by setting the 'limit' argument to "q01_q99". 
#' This may be used to strictly enforce the assignment of probability values of 0. 
#' As the quantile values present in `elements::NicheWidths` are derived using all presences of each taxon in the EVA, 
#' they may better represent the upper and lower tolerances of a taxons ecological niche,
#' especially for taxa where the presences were undersampled.
#' Second, using the 'holdopt' argument one or more predictor variables can be held constant,
#' e.g. to hold soil disturbance constant supply c("SD") to the 'holdopt' argument.
#' This may be useful in instances where you wish to remove the influence of one or more variables
#' on the model results.
#'
#' NOTE: to use this function you must first run `elements::startup()`
#'
#' @param taxon The taxon_code, see `elements::TaxonomicBackbone`.
#' @param predictors A data frame of predictors. Must include the following columns: L, M, N, R, S, SD, GP, bio05, bio06, bio16, and bio17
#' @param pa One of "Present", "Absent", or c("Present", "Absent").
#' @param limit A string representing the niche width quantiles, one of "min_max", "q01_q99", "q05_q95", "q10_q90", "q25_q75". Which if set assigns a probability of 0 to the Present column and/or 1 to the Absent column to a set of predictors if one or more of those predictors are outside the stipulated quantile ranges. Optional.
#' @param holdopt Hold one or more variables at their optimum values. NULL by default, else a vector of variable codes, e.g. c("SD", "GP").
#' @param dp The number of decimal places to round the probability values to.
#' @param append_predictors A boolean. If TRUE return the predictors data frame with the results in an additional column.
#'
#' @return A data frame containing the probability of occurrence (Present and/or Absent), if specified, appended to the predictors data.
#' @export
#' 
#' @examples
#' \dontrun{
#' elements::startup()
#' elements::predict_occ_taxon(taxon = "stellaria_graminea", predictors = elements::ExampleData1, pa = "Present", limit = NULL, holdopt = c("SD", "GP"), dp = 3, append_predictors = TRUE)
#' elements::shutdown() 
#' }
predict_occ_taxon <- function(taxon, predictors, pa = "Present", limit = NULL, holdopt = NULL, dp = 3, append_predictors = TRUE){
  
  # Check whether elements::startup() has been run and the Models filehashDB1 object is in the global environment
  if(isFALSE(exists(x = "Models", envir = .GlobalEnv))){
    stop("Please run elements::startup() before using elements::predict_occ.")
  }
  
  # Check whether all variables names are present in either 1) the predictors data frame, or 2) the holdopt argument
  if(!all(sort(unique(c(colnames(predictors[names(predictors) %in% elements::VariableNames]), holdopt))) == elements::VariableNames)){
    stop("All model variables (L, M, N, R, S, SD, GP, bio05, bio06, bio16, bio17) must either be present in the predictors data frame or passed to holdopt.")
  }
  
  # Check whether the limit argument is correct.
  if(!is.null(limit)){
    if(!(limit %in% c("min_max", "q01_q99", "q05_q95", "q10_q90", "q25_q75"))){
      stop("The string supplied to the limit argument must be one of: \"min_max\", \"q01_q99\", \"q05_q95\", \"q10_q90\", or \"q25_q75\".")
    }
  }
  
  # If specified, fix selected variable values at their optima.
  if(!is.null(holdopt)){
    for(var in holdopt){
      predictors[, var] <- subset(elements::NicheWidths, 
                                  variable == var & taxon_code == taxon,
                                  select = c("mean"), drop = TRUE)
    }
  }
  
  model <- .GlobalEnv$Models[[taxon]]
  
  predictions <- e1071:::predict.svm(object = model, predictors, probability = TRUE)
  
  predictions_df <- round(as.data.frame(attr(predictions, "probabilities")[, pa, drop = FALSE]), digits = dp)
  
  if(!is.null(limit)){
      
    nw <- elements::NicheWidths
    nw_taxon <- subset(nw[nw[["taxon_code"]] == taxon, ], select = -taxon_code)
    nw_taxon <- stats::setNames(data.frame(t(nw_taxon[,-1])), nw_taxon[[1]])
    
    lower <- nw_taxon[unlist(strsplit(limit, "_"))[1], ]
    upper <- nw_taxon[unlist(strsplit(limit, "_"))[2], ]
    
    vars <- colnames(lower)
    
    predictions_limited <- cbind(predictors, predictions_df)
    
    for(var in vars){
      
      if(isTRUE("Present" %in% pa)){
        predictions_limited[["Present"]] <- ifelse(predictions_limited[[var]] > upper[[var]], 0, predictions_limited[["Present"]])
        predictions_limited[["Present"]] <- ifelse(predictions_limited[[var]] < lower[[var]], 0, predictions_limited[["Present"]])
      }
      
      if(isTRUE("Absent" %in% pa)){
        predictions_limited[["Absent"]] <- ifelse(predictions_limited[[var]] > upper[[var]], 1, predictions_limited[["Absent"]])
        predictions_limited[["Absent"]] <- ifelse(predictions_limited[[var]] < lower[[var]], 1, predictions_limited[["Absent"]])
      }
      
    }
    
    results_final <- predictions_limited[pa]
    
  } else {
    
    results_final <- predictions_df
    
  }
  
  if(isTRUE(append_predictors)){
    
    results_final <- cbind(predictors, results_final)#[, c(elements::VariableNames, pa)]
    
  }
  
  return(results_final)
  
}
