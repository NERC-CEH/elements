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
#' @param method One of "svm", "mean", or "median".
#' @param limit A string representing the niche width quantiles, one of "min_max", "q01_q99", "q05_q95", "q25_q75". Which if set assigns a probability of 0 to a set of predictors if one or more of those predictors are outside the stipulated quantile ranges. Only applied if pa = "Present". Optional.
#' @param exclude Model variables to exclude from the distance calculation; passed to the 'holdout' argument of 'elements::predict_occ' if the 'method' argument is "svm", otherwise when the 'method' argument is set to "mean" or "median" those variables are removed from the distance calculation.
#' @param threshold A probability threshold to use as a cut off in the environmental filter. Only applicable when 'method' = "svm".
#' @param toptaxa The number of top taxa, as defined by their probability when 'method' = "svm" or euclidean distance when when 'method' = "mean" or "median".
#'
#' @returns A dataframe containing three columns: taxon_code, rank, and Present (if 'method' = "svm") or Distance (if 'method' = "mean" or "median").
#' @export
#'
#' @examples
#' elements::startup(); elements::env_filter(predictors = elements::ExampleScenarios[1,], taxa = elements::TaxonomicBackbone$taxon_code, method = "svm", threshold = 0.5)
env_filter <- function(predictors = elements::ExampleScenarios[1,], taxa = elements::TaxonomicBackbone$taxon_code, method = "svm", limit = NULL, exclude = NULL, threshold = NULL, toptaxa = NULL){
  
  if(isFALSE(nrow(predictors) == 1)){
    stop("Only one row of predictors may be used with `elements::env_filter_plot` use `elements::env_filter` instead.")
  }
  
  if(method == "svm"){
    
    # Check whether elements::startup() has been run and the Models filehashDB1 object is in the global environment
    if(isFALSE(exists(x = "Models", envir = .GlobalEnv))){
      stop("Please run elements::startup() before using elements::env_filter when method = \"svm\".")
    }
    
    # Retrieve probabilities for all taxa and predictors
    taxa_results <- elements::predict_occ(taxa_codes = taxa,
                                          predictors = predictors,
                                          limit = limit,
                                          holdopt = exclude,
                                          append_predictors = FALSE)
    
    taxa_results <- taxa_results[order(taxa_results$Present, decreasing = TRUE), ]
    
    if(!is.null(threshold)){
      
      taxa_results_filtered <- subset(taxa_results, Present >= threshold)[,c("taxon_code", "Present")]
      
    } else if(is.null(threshold) & !is.null(toptaxa)){
      
      taxa_results_filtered <- taxa_results[1:toptaxa, c("taxon_code", "Present")]
      
    } else if(is.null(threshold) & is.null(toptaxa)) {
      
      taxa_results_filtered <- taxa_results[,c("taxon_code", "Present")]
      
    }
    
  } else if(method %in% c("mean", "median")){
    
    predictors_mat <- as.matrix(predictors[, setdiff(elements::VariableNames, exclude)])
    
    optima_df <- subset(elements::NicheWidths, taxon_code %in% taxa, select = c("variable", method, "taxon_code"))
    
    if(!is.null(exclude)){
      optima_df <- subset(elements::NicheWidths, !(variable %in% exclude))
    }
    
    optima_mat <- stats::xtabs(get(method) ~ taxon_code + variable, data = optima_df)
    
    attr(optima_mat, "class") = NULL; attr(optima_mat, "call") = NULL; dimnames(optima_mat) = unname(dimnames(optima_mat))
    
    dist_from_optima <- sweep(optima_mat, 2, predictors_mat) ^ 2
      
    dist_from_optima <- scale(dist_from_optima, center = FALSE)
    
    taxa_results <- sqrt(rowSums(dist_from_optima))
    
    taxa_results <- data.frame("taxon_code" = names(taxa_results), "Distance" = unname(taxa_results))
    
    # Need to optimise this!
    if(!is.null(limit)){
      
      for(taxon in taxa){
        
        nw <- elements::NicheWidths
        nw_taxon <- subset(nw[nw[["taxon_code"]] == taxon, ], select = -taxon_code)
        nw_taxon <- stats::setNames(data.frame(t(nw_taxon[,-1])), nw_taxon[[1]])
        
        lower <- nw_taxon[unlist(strsplit(limit, "_"))[1], ]
        upper <- nw_taxon[unlist(strsplit(limit, "_"))[2], ]
        
        vars <- colnames(lower)
        
        for(var in vars){
            taxa_results[taxa_results["taxon_code"] == taxon, "Distance"] <- ifelse(predictors_mat[, var] > upper[[var]], NA, taxa_results[taxa_results["taxon_code"] == taxon, "Distance"])
            taxa_results[taxa_results["taxon_code"] == taxon, "Distance"] <- ifelse(predictors_mat[, var] < lower[[var]], NA, taxa_results[taxa_results["taxon_code"] == taxon, "Distance"])
        }
        
      }
      
    }
    
    taxa_results <- taxa_results[order(taxa_results$Distance, decreasing = FALSE), ]
    
    if(!is.null(threshold)){
      
      stop("The threshold argument can only be used when method = \"svm\".")
      
    } else if(is.null(threshold) & !is.null(toptaxa)){
      
      taxa_results_filtered <- taxa_results[1:toptaxa, ]
      
    } else if(is.null(threshold) & is.null(toptaxa)) {
      
      taxa_results_filtered <- taxa_results
      
    }
    
  }
  
  rownames(taxa_results_filtered) <- NULL
  
  taxa_results_filtered["rank"] <- as.numeric(rownames(taxa_results_filtered))
  
  return(taxa_results_filtered)
  
}
