#' Feature importance
#'
#' A dataset containing the feature importance of each model variable value for each species model
#' generated using the `DALEX::model_parts` function.
#'
#' \code{featureImportance} 
#'
#' @format A data frame with `r nrow(BIENS::featureImportance)` rows and `r ncol(BIENS::featureImportance)` columns, the definitions of which are:
#' \describe{
#'   \item{species}{The species, represented by a UKSI TVK.}
#'   \item{variable}{A string representing the names of the model variable (), baseline (_baseline_), and full model (_full_model_)}
#'   \item{permutation}{The `DALEX::model_parts` permuation}
#'   \item{dropout_loss}{The dropout loss associated with a particular variable and permuation.}
#' }
"featureImportance"

#' Marginal effects plot data
#'
#' A dataset containing the marginal effects data produced using the `DALEX::model_profile` function.
#' Three marginal effect types are provided: Accumulated Local (AL), Partial Dependence (PD), and Local Dependence (LD).
#'
#' \code{marginalEffects} 
#'
#' @format A data frame with `r nrow(BIENS::marginalEffects)` rows and `r ncol(BIENS::marginalEffects)` columns, the definitions of which are:
#' \describe{
#'   \item{species}{The species, represented by a UKSI TVK.}
#'   \item{variable}{The model variable name ().}
#'   \item{x}{The model vairable value.}
#'   \item{y}{The model response value.}
#'   \item{type}{The marginal effects plot type.}
#' }
"marginalEffects"

#' Model performance measures
#'
#' A dataset containing a number of performance metrics for each model.
#'
#' \code{performanceMeasures} 
#'
#' @format A data frame with `r nrow(BIENS::performanceMeasures)` rows and `r ncol(BIENS::performanceMeasures)` columns, the definitions of which are:
#' \describe{
#'   \item{species}{The species, represented by a UKSI TVK.}
#'   \item{bbrier}{Binary Brier score}
#'   \item{logloss}{...}
#'   \item{auc}{Area under the ROC curve}
#'   \item{prauc}{Area under the precision-recall curve}
#'   \item{precision}{Positive predictive value}
#'   \item{recall}{...}
#'   \item{sensitivity}{True positive rate}
#'   \item{specificity}{True negative rate}
#'   \item{acc}{Accuracy}
#'   \item{bacc}{Balanced accuracy}
#' }
"performanceMeasures"

#' Ecological Niche Models
#'
#' A list of Support Vector Machine (SVM) ecological niche models for each species.
#'
#' \code{models} 
#'
#' @format A named list with `r nrow(BIENS::models)` elements. Element names are the species, represented by a UKSI TVK..
"models"