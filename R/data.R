#' Model performance measures
#'
#' A dataset containing a number of performance measures for each model.
#'
#' \code{PerformanceMeasures} 
#'
#' @format A data frame with `r nrow(elements::PerformanceMeasures)` rows and `r ncol(elements::PerformanceMeasures)` columns, the definitions of which are:
#' \describe{
#'   \item{taxon_code}{The taxon, see `elements::ModellingSpecies` and `elements::TaxaBackbone`.}
#'   \item{Holdout.PrecisionRecallAreaUnderCurve}{The Precision-Recall Area Under the Curve (PRAUC), calculated using the random holdout sample test data.}
#'   \item{Holdout.Precision}{The Precision, calculated using the random holdout sample test data.}
#'   \item{Holdout.Recall}{The Recall, calculated using the random holdout sample test data.}
#'   \item{Holdout.Sensitivity}{The Sensitivity, calculated using the random holdout sample test data.}
#'   \item{Holdout.Specificity}{The Specificity, calculated using the random holdout sample test data.}
#'   \item{Holdout.BalancedAccuracy}{The Balanced Accuracy, calculated using the random holdout sample test data.}
#'   \item{STCV.BalancedAccuracy}{The Balanced Accuracy, calculated during the modelling fitting process which used spatio-temporal 10-fold cross-validation.}
#' }
"PerformanceMeasures"

#' Example predictor data
#'
#' A dataset containing a randomised sample of 100 presences and 100 absences from the training and test data for the Stellaria graminea (stellaria_graminea)
#'
#' \code{ExampleData} 
#'
#' @format A data frame with `r nrow(elements::ExampleData)` rows and `r ncol(elements::ExampleData)` columns, the definitions of which are:
#' \describe{
#'   \item{Presence}{A column of type string, containing either "Present" or "Absent".}
#' }
"ExampleData"

