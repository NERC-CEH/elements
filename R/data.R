#' Model performance measures
#'
#' A dataset containing a number of performance measures for each model.
#'
#' \code{PerformanceMeasures} 
#'
#' @format A data frame with `r nrow(elements::PerformanceMeasures)` rows and `r ncol(elements::PerformanceMeasures)` columns, the definitions of which are:
#' \describe{
#'   \item{taxon_code}{The taxon, see `elements::TaxaBackbone`.}
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
#' A dataset containing a randomised sample of 100 presences and 100 absences from the training and test data for one taxon: 
#' Stellaria graminea (stellaria_graminea)
#'
#' \code{ExampleData1} 
#'
#' @format A data frame with `r nrow(elements::ExampleData1)` rows and `r ncol(elements::ExampleData1)` columns, the definitions of which are:
#' \describe{
#'   \item{L}{}
#'   \item{M}{}
#'   \item{N}{}
#'   \item{R}{}
#'   \item{S}{}
#'   \item{SD}{}
#'   \item{GP}{}
#'   \item{bio05}{}
#'   \item{bio06}{}
#'   \item{bio16}{}
#'   \item{bio17}{}
#' }
"ExampleData1"

#' Example predictor data
#'
#' A dataset containing a randomised sample of 100 presences and 100 absences from the training and test data for two taxa: 
#' Stellaria graminea (stellaria_graminea) and Silene flos-cuculi (silene_flos-cuculi).
#'
#' \code{ExampleData2} 
#'
#' @format A data frame with `r nrow(elements::ExampleData2)` rows and `r ncol(elements::ExampleData2)` columns, the definitions of which are:
#' \describe{
#'   \item{L}{}
#'   \item{M}{}
#'   \item{N}{}
#'   \item{R}{}
#'   \item{S}{}
#'   \item{SD}{}
#'   \item{GP}{}
#'   \item{bio05}{}
#'   \item{bio06}{}
#'   \item{bio16}{}
#'   \item{bio17}{}
#'   \item{taxon_code}{}
#' }
"ExampleData2"

