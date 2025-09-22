#' Retrieve the most suitable taxa for a given set of environmental variable values
#' 
#' Retrieve the most suitable taxa for a given set of environmental variable values supplied in the 'predictors' argument.
#' To sets of methods are available: 
#' 1) "svm" which generates predictions using `elements::predict_occ` and uses the resultant probability values; 
#' 2) "mean" and "median" which calculates the scaled euclidean distance between the values supplied in the 'predictors' argument and the mean or median niche positions as present in `elements::NicheWidths`.
#' 
#' The svm method will produce more accurate results as it considers the position of the environmental variable values in the 11-dimensional hypervolume; 
#' however, if there are a large number of taxa-predictor combinations the mean and median methods offer a faster alternative.
#' 
#' NOTE: The "mean" and "median" methods do not produce realistic results and so are currently included for demonstrative purposes only.
#'
#' @param predictors A data frame of predictors. Must include atleast one the following columns: L, M, N, R, S, SD, GP, bio05, bio06, bio16, bio17. Columns not included must then be included in the 'exclude' argument.
#' @param taxa A vector of strings containing one or more taxa to generate predictions for.
#' @param screen A boolean (TRUE/FALSE) indicating whether to use the `elements::envelope_filter` function to check whether taxa are within distibutional limits prior to applying the more computationally expensive `elements::predict_occ` or `elements::calc_distance` functions.
#' @param method One of "svm", "mean", or "median".
#' @param limit A string representing the niche width quantiles, one of "min_max", "q01_q99", "q05_q95", "q25_q75". Which if set assigns a probability of 0 to a set of predictors if one or more of those predictors are outside the stipulated quantile ranges. Only applied if pa = "Present". Optional.
#' @param exclude Model variables to exclude from the distance calculation; passed to the 'holdout' argument of 'elements::predict_occ' if the 'method' argument is "svm", otherwise when the 'method' argument is set to "mean" or "median" those variables are removed from the distance calculation.
#' @param threshold A probability threshold to use as a cut off in the environmental filter. Only applicable when 'method' = "svm".
#' @param append A string, one of "all", "predictors", or "ids" representing which columns from the predictors data frame to return with the results.
#'
#' @returns A dataframe containing three columns: taxon_code, rank, and Present (if 'method' = "svm") or Distance (if 'method' = "mean" or "median").
#' @export
#'
#' @examples
#' elements::startup(); elements::env_filter(predictors = elements::ExampleScenarios, taxa = elements::TaxonomicBackbone$taxon_code, method = "svm", threshold = 0.5)
env_filter <- function(predictors, taxa = elements::TaxonomicBackbone$taxon_code, screen = TRUE, method = "svm", limit = "min_max", exclude = NULL, threshold = NULL, append = "ids"){
  
  if(screen == TRUE){
    
    screened_data <- elements::envelope_filter(taxa = taxa,
                                               predictors = predictors, 
                                               vars = elements::VariableNames, 
                                               limit = limit)
    
    inside_range <- subset(screened_data, within_limits == TRUE, select = -within_limits)
    
    outside_range <- subset(screened_data, within_limits == FALSE, select = -within_limits)
    
  } else {
    
    inside_range <- merge(predictors, data.frame("taxon_code" = taxa))
    
    outside_range <- inside_range[0,]
    
  }
  
  taxa_results_outside_range <- outside_range
  
  if(method == "svm"){
    
    # Check whether elements::startup() has been run and the Models filehashDB1 object is in the global environment
    if(isFALSE(exists(x = "Models", envir = elementsEnv))){
      stop("Please run elements::startup() before using elements::env_filter when method = \"svm\".")
    }
    
    # Retrieve probabilities for all taxa and predictors
    taxa_results_inside_range <- elements::predict_occ(taxa = NULL,
                                                       predictors = inside_range,
                                                       limit = NULL,
                                                       holdopt = exclude,
                                                       append = append)
    
    if(nrow(outside_range) > 0){taxa_results_outside_range["Present"] <- 0}
    
  } else if(method %in% c("mean", "median")){
    
    taxa_results_inside_range <- elements::calc_distance(predictors = inside_range, 
                                                         taxa = taxa, 
                                                         vars = elements::VariableNames, 
                                                         method = method,
                                                         append = append)
    
    if(nrow(outside_range) > 0){taxa_results_outside_range["distance"] <- Inf}
    
  }
  
  taxa_results_outside_range <- taxa_results_outside_range[, colnames(taxa_results_inside_range)]
  
  taxa_results_all <- rbind(taxa_results_inside_range, taxa_results_outside_range)
  
  # Subset taxa
  if(!is.null(threshold)){
    
    taxa_results_filtered <- subset(taxa_results_all, Present >= threshold)
    
  } else if(is.null(threshold)) {
    
    taxa_results_filtered <- taxa_results_all
    
  }
    
  # Sort
  rownames(taxa_results_filtered) <- NULL
  
  return(taxa_results_filtered)
  
}
