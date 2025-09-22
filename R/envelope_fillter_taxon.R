#' Apply an envelope model for a set of predictors for one taxon
#' 
#' Append a column to set of predictors which indicates whether the predictors 
#' in each row are within a set of distributional limits
#' for a particular taxon and set of variables.
#' 
#' This function acts as an envelope, allowing the screening of large quantities
#' of predictor data for the suitability of a taxon before applying the more
#' computationally expensive SVM models in `elements::predict_occ` function
#' and to a lesser extent the euclidean distance `elements::calc_distance` function.
#'
#' @param taxon The taxon_code, see `elements::TaxonomicBackbone`.
#' @param predictors A data frame of predictors. Must include one or more of the following columns: L, M, N, R, S, SD, GP, bio05, bio06, bio16, and bio17
#' @param vars A vector of strings, containing one or more variables as present in `elements::VariableNames`, which must also be present in the predictors data frame.
#' @param limit A string representing the niche width quantiles, one of "min_max", "q01_q99", "q05_q95", "q10_q90", "q25_q75". 
#'
#' @return The predictors data frame containing an additional column 'within_limit' indicating whether each row of predictord is wthin the specified limits.
#' @export
#' 
#' @examples
#' \dontrun{
#' elements::envelope_filter(taxon = "stellaria_graminea", predictors = elements::ExampleData1)
#' }
envelope_filter_taxon <- function(taxon, predictors, vars = elements::VariableNames, limit = "min_max"){
  
  # Check whether the limit argument is correct.
  if(!(limit %in% c("min_max", "q01_q99", "q05_q95", "q10_q90", "q25_q75"))){
    stop("The string supplied to the limit argument must be one of: \"min_max\", \"q01_q99\", \"q05_q95\", \"q10_q90\", or \"q25_q75\".")
  }
  
  nw_taxon <- subset(elements::NicheWidths, taxon_code == taxon, select = -taxon_code)
  nw_taxon <- stats::setNames(data.frame(t(nw_taxon[,-1])), nw_taxon[[1]])
  
  lower <- nw_taxon[unlist(strsplit(limit, "_"))[1], ]
  upper <- nw_taxon[unlist(strsplit(limit, "_"))[2], ]
  
  envelope <- predictors
  
  for(var in vars){
    envelope[[var]] <- ifelse(predictors[[var]] > upper[[var]], 1, 0)
    envelope[[var]] <- ifelse(predictors[[var]] < lower[[var]], 1, envelope[[var]])
  }
  
  predictors[["within_limits"]] <- ifelse(rowSums(envelope[, vars]) == 0, TRUE, FALSE)
  
  return(predictors)
  
}