#' Extract the support vectors from an SVM model
#' 
#' Extract the support vectors from the SVM model for a taxon
#' and descale them.
#'
#' @param taxon A string containing the taxon code for a taxon, see `elements::ModelledTaxaCodes`.
#'
#' @returns A data frame containing `r length(elements::VariableNames)` columns, containing the support vector points for each variable in `length(elements::VariableNames)`
#' @export
#'
#' @examples
#' \dontrun{
#' elements::startup(); elements::extract_svs(taxon = "carex_nigra")
#' }
extract_svs <- function(taxon){
  
  model <- elementsEnv$Models[[taxon]]
  
  svs <- model$SV
  xscale <- model$x.scale$`scaled:scale`
  xcenter <- model$x.scale$`scaled:center`
  
  cn_sv_descaled_list <- lapply(colnames(svs),
                                FUN = function(i){
                                  svs <- svs[, i, drop = FALSE] * xscale[i] + xcenter[i]
                                })
  
  cn_sv_descaled <- as.data.frame(do.call("cbind", cn_sv_descaled_list))
  
  return(cn_sv_descaled)
  
}
