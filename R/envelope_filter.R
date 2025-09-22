#' Apply an envelope model for a set of predictors for multiple taxa
#' 
#' Append a column to set of predictors which indicates whether the predictors 
#' in each row are within a set of distributional limits
#' for a particular taxon and set of variables.
#' 
#' This function acts as an envelope, allowing the screening of large quantities
#' of predictor data for the suitability of multiple taxa before applying the more
#' computationally expensive SVM models in `elements::predict_occ` and `elements::predict_occ_taxon`.
#'
#' @param taxa A vector of strings containing one or more taxon codes. See `elements::TaxonomicBackbone`. Optional
#' @param predictors A data frame of predictors. Must include one or more of the following columns: L, M, N, R, S, SD, GP, bio05, bio06, bio16, and bio17
#' @param vars A vector of strings, containing one or more variables as present in `elements::VariableNames`, which must also be present in the predictors data frame.
#' @param limit A string representing the niche width quantiles, one of "min_max", "q01_q99", "q05_q95", "q10_q90", "q25_q75". 
#'
#' @return The predictors data frame containing an additional column 'within_limit' indicating whether each row of predictord is wthin the specified limits.
#' @export
#' 
#' @examples
#' \dontrun{
#' elements::envelope_filter_taxon(taxa = NULL, predictors = elements::ExampleData2)
#' }
envelope_filter <- function(taxa, predictors, vars = elements::VariableNames, limit = "min_max"){
  
  # Check whether the limit argument is correct.
  if(!(limit %in% c("min_max", "q01_q99", "q05_q95", "q10_q90", "q25_q75"))){
    stop("The string supplied to the limit argument must be one of: \"min_max\", \"q01_q99\", \"q05_q95\", \"q10_q90\", or \"q25_q75\".")
  }
  
  if(is.null(taxa) & "taxon_code" %in% colnames(predictors)){
    
    # Split
    predictors_list <- split(predictors, predictors[["taxon_code"]])
    
    # Apply
    results_list <- lapply(X = names(predictors_list), 
                           FUN = function(taxon){
                             
                             result <- elements::envelope_filter_taxon(taxon = taxon,
                                                                       predictors = predictors_list[[taxon]],
                                                                       vars = vars,
                                                                       limit = limit)
                             
                             result[["taxon_code"]] <- taxon
                             
                             return(result)
                             
                           }
    )
    
  } else if(!is.null(taxa)){
    
    # Apply
    results_list <- lapply(X = taxa, 
                           FUN = function(taxon){
                             
                             result <- elements::envelope_filter_taxon(taxon = taxon,
                                                                       predictors = predictors,
                                                                       vars = vars,
                                                                       limit = limit)
                             
                             result[["taxon_code"]] <- taxon
                             
                             return(result)
                             
                           }
    )
    
  } else if(is.null(taxa) & !("taxon" %in% colnames(predictors))) {
    
    stop("The taxa to filter must be specified in either: 1) the 'taxa' argument, 2) or present in a column in the predictors data frame named 'taxon_code'")
    
  }
  
  # Combine
  results <- do.call(rbind, results_list)
  
  return(results)
  
}