#' Generate predictions for the probability of occurrence for specified taxa
#' 
#' Generate predictions for the probability of occurrence (presence and/or absence) using a data frame of predictors for a one or more taxa specified in either:
#' 1) the 'taxa_codes' argument, or
#' 2) a column in the predictors data frame named 'taxon_code'
#' 
#' If taxon codes are supplied in the 'taxa_codes' argument and there is a column in the predictors data frame named 'taxon_code', 
#' the taxa present in the 'taxa_codes' argument will be used and results will be calculated using the entire predictors data frame
#' and the 'taxon_code' column will be replaced.
#'
#' NOTE: to use this function you must first run `elements::startup()`
#'
#' @param taxa_codes A vector of strings containing one or more taxa to generate predictions for. Optional.
#' @param predictors A data frame of predictors. Must include the following columns: L, M, N, R, S, SD, GP, bio05, bio06, bio16, bio17, and taxon
#' @param pa One of "Present", "Absent", or c("Present", "Absent").
#' @param limit A string representing the niche width quantiles, one of "min_max", "q01_q99", "q05_q95", "q25_q75". Which if set assigns a probability of 0 to a set of predictors if one or more of those predictors are outside the stipulated quantile ranges. Only applied if pa = "Present". Optional.
#' @param dp The number of decimal places to round the probability values to.
#' @param append_predictors A boolean. If TRUE return the predictors data frame with the results in an additional column.
#'
#' @return A data frame containing the probability of occurrence (Present and/or Absent) for each taxon, if specified, appended to the predictorsS data.
#' @export
#' 
#' @examples
#' \dontrun{
#' elements::startup()
#' 
#' # Generate predictions using a data frame containing taxon_codes in the 'taxon' column.
#' elements::predict_occ(taxa_codes = NULL, predictors = elements::ExampleData2, pa = "Present", limit = NULL, dp = 3, append_predictors = FALSE)
#' 
#' # Generate predictions for taxa specified in the 'taxa_codes' argument using a data frame containing only predictor variables.
#' elements::predict_occ(taxa_codes = c("stellaria_graminea", "silene_flos-cuculi"), predictors = elements::ExampleData1, pa = "Present", limit = NULL, dp = 3, append_predictors = TRUE)
#' 
#' # Generate predictions for taxa specified in the 'taxa_codes' argument using a data frame containing both predictor variables and a 'taxon_code' column (which is ignored and overwritten).
#' elements::predict_occ(taxa_codes = c("stellaria_graminea", "silene_flos-cuculi"), predictors = elements::ExampleData2, pa = "Present", limit = NULL, dp = 3, append_predictors = TRUE)
#' 
#' elements::shutdown() 
#' }
predict_occ <- function(taxa_codes, predictors, pa = "Present", limit = NULL, dp = 3, append_predictors = TRUE){
  
  if(isFALSE(exists(x = "Models", envir = .GlobalEnv))){
    stop("Please run elements::startup() before using elements::predict_occ.")
  }
  
  if(is.null(taxa_codes) & "taxon_code" %in% colnames(predictors)){
    
    # Split
    predictors_list <- split(predictors, predictors[["taxon_code"]])
    
    # Apply
    results_list <- lapply(X = names(predictors_list), 
                           FUN = function(taxon){
                             result <- elements::predict_occ_taxon(taxon = taxon,
                                                                   predictors = predictors_list[[taxon]],
                                                                   pa = pa,
                                                                   limit = limit,
                                                                   dp = dp,
                                                                   append_predictors = append_predictors)
                             result[["taxon_code"]] <- taxon
                             return(result)
                           }
    )
    
  } else if(!is.null(taxa_codes)){
    
    # Apply
    results_list <- lapply(X = taxa_codes, 
                           FUN = function(taxon){
                             result <- elements::predict_occ_taxon(taxon = taxon,
                                                                   predictors = predictors,
                                                                   pa = pa, 
                                                                   limit = limit,
                                                                   dp = dp,
                                                                   append_predictors = append_predictors)
                             result[["taxon_code"]] <- taxon
                             return(result)
                           }
    )
    
  } else if(is.null(taxa_codes) & !("taxon" %in% colnames(predictors))) {
    
    stop("The taxa to model must be specified in either: 1) the 'taxa_codes' argument, 2) or present in a column in the predictors data frame named 'taxon_code'")
    
  }
  
  # Combine
  results <- do.call(rbind, results_list)
  
  return(results)
  
}
