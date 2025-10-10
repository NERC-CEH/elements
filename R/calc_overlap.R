#' Calculate the niche overlap between a set of taxa
#'
#' Calculate the niche overlap between all combinations of taxa as present in the 
#' 'taxa' argument, or the combinations of taxa present in the 'taxa' and 'taxa_comp'
#' arguments.
#' Two methods are curently provided:
#' "D" - Schoener's D (Schoener, 1968)
#' "I" - Warren's I (Warren et al., 2008)
#'
#' @param taxa A vector of strings containing taxon codes, see `elements::TaxonomicBackbone`.
#' @param taxa_comp A vector of string containing taxon codes, see `elements::TaxonomicBackbone`.
#' @param data A data frame containing the univariate responses of the taxa supplied in the 'taxa' and 'taxa_comp' arguments for the variables supplied in the 'vars' argument. `elements::HOAData` by default.
#' @param vars A vector of strings containing the variables for which to calculate the overlap, one or more of `elements::VariableNames`.
#' @param method A string, one of "D" or "I" indicating the overlap method (see description).
#' @param average A boolean (TRUE/FALSE) indicating whether to calculate the mean overlap across all variables.
#' @param format A boolean (TRUE/FALSE) indicating whether to return the results in wide of long format.
#'
#' @returns A data frame containing the overlap values.
#' @export
#' 
#' @references 
#' Schoener, T.W., 1968. The Anolis Lizards of Bimini: Resource Partitioning in a Complex Fauna. Ecology 49, 704–726. https://doi.org/10.2307/1935534
#' Warren, D.L., Glor, R.E., Turelli, M., 2008. ENVIRONMENTAL NICHE EQUIVALENCY VERSUS CONSERVATISM: QUANTITATIVE APPROACHES TO NICHE EVOLUTION. Evolution 62, 2868–2883. https://doi.org/10.1111/j.1558-5646.2008.00482.x
#'
#' @examples
#' elements::calc_overlap(taxa = c("carex_arenaria", "carex_divulsa", "carex_hirta", "carex_sylvatica"))
calc_overlap <- function(taxa, taxa_comp = NULL, data = elements::HOAData, vars = elements::VariableNames, method = "D", average = FALSE, format = "wide"){
  
  if(!is.null(taxa_comp)){
    taxa_combinations <- unname(as.matrix(expand.grid(taxa, taxa_comp)))
  } else if(is.null(taxa_comp)){
    taxa_combinations <- t(combn(taxa, m = 2))
  }
  
  data_init <- subset(data, variable %in% vars & taxon_code %in% unique(c(taxa, taxa_comp)))
  
  eval_combinations <- unname(do.call("rbind", lapply(vars, FUN = \(x) cbind(taxa_combinations, x))))
  
  overlap_results_vec <- sapply(X = 1:nrow(eval_combinations),
                                FUN = function(X){
                                  
                                  taxa_X <- as.vector(eval_combinations[X, 1:2])
                                  var_X <- eval_combinations[X, 3]
                                  
                                  taxon_1 <- subset(data_init, variable == var_X & taxon_code == taxa_X[1], select = y, drop = TRUE)
                                  taxon_2 <- subset(data_init, variable == var_X & taxon_code == taxa_X[2], select = y, drop = TRUE)
                                  
                                  taxon_1_rescaled <- taxon_1 / sum(taxon_1)
                                  taxon_2_rescaled <- taxon_2 / sum(taxon_2)
                                  
                                  if(method == "D"){
                                    overlap <- 1 - sum(abs(taxon_1_rescaled - taxon_2_rescaled)) / 2
                                  } else if(method == "I"){
                                    overlap <- 1 - sum((sqrt(taxon_1_rescaled) - sqrt(taxon_2_rescaled))^2) / 2
                                  }
                                  
                                  return(overlap)
                                  
                                })
  
  overlap_results <- cbind(as.data.frame(eval_combinations), overlap_results_vec)
  colnames(overlap_results) <- c("taxon_code_1", "taxon_code_2", "variable", "overlap")
  
  if(isTRUE(average)){
    overlap_results <- aggregate(overlap ~ taxon_code_1 + taxon_code_2, data = overlap_results, FUN = "mean")
  }
  
  if(format == "wide" & isFALSE(average)){
    overlap_results <- setNames(reshape(overlap_results, 
                                        idvar = c("taxon_code_1", "taxon_code_2"), 
                                        timevar = "variable", 
                                        direction = "wide"), 
                                c("taxon_code_1", "taxon_code_2", vars)
                                )
  }
  
  return(overlap_results)
  
}