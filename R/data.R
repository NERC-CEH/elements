#' ALE data
#'
#' A dataset containing the Accumulated Local Effect (ALE) (Molnar, 2018) data for the models, generated using 1000 samples from the training data.
#'
#' \code{ALEData} 
#'
#' @format A data frame with `r nrow(elements::ALEData)` rows and `r ncol(elements::ALEData)` columns, the definitions of which are:
#' \describe{
#'   \item{taxon_code}{The taxon, see `elements::ModelTaxa`.}
#'   \item{x}{The variable value.}
#'   \item{y}{The ALE value.}
#'   \item{variable}{The variable name.}
#' }
"ALEData"

#' EuroSL data
#' 
#' Selected columns for the accepted taxa in the European European Species List (EuroSL) database.
#'
#' \code{EuroSL} 
#'
#' @format A data frame with `r nrow(elements::EuroSL)` rows and `r ncol(elements::EuroSL)` columns, the definitions of which are:
#' \describe{
#'   \item{TaxonUsageID}{The unique code identifying the taxon.}
#'   \item{TaxonName}{The taxon name.}
#'   \item{NameAuthor}{The author who described the taxon concept.}
#'   \item{TaxonRank}{The rank of the taxon.}
#'   \item{IsChildTaxonOfID}{The immediate parent taxon.}
#'   \item{IsChildTaxonOf}{The unique code identifying the parent taxon.}
#' }
"EuroSL"

#' Example predictor data
#'
#' A dataset containing a randomised sample of 100 presences and 100 absences from the training and test data for one taxon: 
#' Stellaria graminea (stellaria_graminea)
#'
#' \code{ExampleData1} 
#'
#' @format A data frame with `r nrow(elements::ExampleData1)` rows and `r ncol(elements::ExampleData1)` columns, the definitions of which are:
#' \describe{
#'   \item{L}{Light}
#'   \item{M}{Soil Moisture}
#'   \item{N}{Soil Nitrogen}
#'   \item{R}{Reaction}
#'   \item{S}{Salinity}
#'   \item{SD}{Soil Disturbance}
#'   \item{GP}{Grazing Pressure}
#'   \item{bio05}{Maximum temperature in the warmest month}
#'   \item{bio06}{Minimum temperature in the coldest month}
#'   \item{bio16}{Precipitation in the wettest quarter}
#'   \item{bio17}{Precipitation in the driest quarter}
#'   \item{taxon_code}{The taxon, see `elements::ModelTaxa`.}
#' }
#' @references{
#' Copernicus Climate Change Service, 2021. Downscaled bioclimatic indicators for selected regions from 1950 to 2100 derived from climate projections. https://doi.org/10.24381/CDS.0AB27596
#' 
#' Dengler, J., Jansen, F., Chusova, O., Hüllbusch, E., Nobis, M.P., Meerbeek, K.V., Axmanová, I., Bruun, H.H., Chytrý, M., Guarino, R., Karrer, G., Moeys, K., Raus, T., Steinbauer, M.J., Tichý, L., Tyler, T., Batsatsashvili, K., Bita-Nicolae, C., Didukh, Y., Diekmann, M., Englisch, T., Fernández-Pascual, E., Frank, D., Graf, U., Hájek, M., Jelaska, S.D., Jiménez-Alfaro, B., Julve, P., Nakhutsrishvili, G., Ozinga, W.A., Ruprecht, E.-K., Šilc, U., Theurillat, J.-P., Gillet, F., 2023. Ecological Indicator Values for Europe (EIVE) 1.0. Vegetation Classification and Survey 4, 7–29. https://doi.org/10.3897/VCS.98324
#' 
#' Midolo, G., Herben, T., Axmanová, I., Marcenò, C., Pätsch, R., Bruelheide, H., Karger, D.N., Aćić, S., Bergamini, A., Bergmeier, E., Biurrun, I., Bonari, G., Čarni, A., Chiarucci, A., De Sanctis, M., Demina, O., Dengler, J., Dziuba, T., Fanelli, G., Garbolino, E., Giusso del Galdo, G., Goral, F., Güler, B., Hinojos-Mendoza, G., Jansen, F., Jiménez-Alfaro, B., Lengyel, A., Lenoir, J., Pérez-Haase, A., Pielech, R., Prokhorov, V., Rašomavičius, V., Ruprecht, E., Rūsiņa, S., Šilc, U., Škvorc, Ž., Stančić, Z., Tatarenko, I., Chytrý, M., 2023. Disturbance indicator values for European plants. Global Ecology and Biogeography 32, 24–34. https://doi.org/10.1111/geb.13603
#' 
#' Tichý, L., Axmanová, I., Dengler, J., Guarino, R., Jansen, F., Midolo, G., Nobis, M.P., Van Meerbeek, K., Aćić, S., Attorre, F., Bergmeier, E., Biurrun, I., Bonari, G., Bruelheide, H., Campos, J.A., Čarni, A., Chiarucci, A., Ćuk, M., Ćušterevska, R., Didukh, Y., Dítě, D., Dítě, Z., Dziuba, T., Fanelli, G., Fernández-Pascual, E., Garbolino, E., Gavilán, R.G., Gégout, J.-C., Graf, U., Güler, B., Hájek, M., Hennekens, S.M., Jandt, U., Jašková, A., Jiménez-Alfaro, B., Julve, P., Kambach, S., Karger, D.N., Karrer, G., Kavgacı, A., Knollová, I., Kuzemko, A., Küzmič, F., Landucci, F., Lengyel, A., Lenoir, J., Marcenò, C., Moeslund, J.E., Novák, P., Pérez-Haase, A., Peterka, T., Pielech, R., Pignatti, A., Rašomavičius, V., Rūsiņa, S., Saatkamp, A., Šilc, U., Škvorc, Ž., Theurillat, J.-P., Wohlgemuth, T., Chytrý, M., 2023. Ellenberg-type indicator values for European vascular plant species. Journal of Vegetation Science 34, e13168. https://doi.org/10.1111/jvs.13168
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
#'   \item{L}{Light}
#'   \item{M}{Soil Moisture}
#'   \item{N}{Soil Nitrogen}
#'   \item{R}{Reaction}
#'   \item{S}{Salinity}
#'   \item{SD}{Soil Disturbance}
#'   \item{GP}{Grazing Pressure}
#'   \item{bio05}{Maximum temperature in the warmest month}
#'   \item{bio06}{Minimum temperature in the coldest month}
#'   \item{bio16}{Precipitation in the wettest quarter}
#'   \item{bio17}{Precipitation in the driest quarter}
#'   \item{taxon_code}{The taxon, see `elements::ModelTaxa`.}
#' }
#' @references{
#' Copernicus Climate Change Service, 2021. Downscaled bioclimatic indicators for selected regions from 1950 to 2100 derived from climate projections. https://doi.org/10.24381/CDS.0AB27596
#' 
#' Dengler, J., Jansen, F., Chusova, O., Hüllbusch, E., Nobis, M.P., Meerbeek, K.V., Axmanová, I., Bruun, H.H., Chytrý, M., Guarino, R., Karrer, G., Moeys, K., Raus, T., Steinbauer, M.J., Tichý, L., Tyler, T., Batsatsashvili, K., Bita-Nicolae, C., Didukh, Y., Diekmann, M., Englisch, T., Fernández-Pascual, E., Frank, D., Graf, U., Hájek, M., Jelaska, S.D., Jiménez-Alfaro, B., Julve, P., Nakhutsrishvili, G., Ozinga, W.A., Ruprecht, E.-K., Šilc, U., Theurillat, J.-P., Gillet, F., 2023. Ecological Indicator Values for Europe (EIVE) 1.0. Vegetation Classification and Survey 4, 7–29. https://doi.org/10.3897/VCS.98324
#' 
#' Midolo, G., Herben, T., Axmanová, I., Marcenò, C., Pätsch, R., Bruelheide, H., Karger, D.N., Aćić, S., Bergamini, A., Bergmeier, E., Biurrun, I., Bonari, G., Čarni, A., Chiarucci, A., De Sanctis, M., Demina, O., Dengler, J., Dziuba, T., Fanelli, G., Garbolino, E., Giusso del Galdo, G., Goral, F., Güler, B., Hinojos-Mendoza, G., Jansen, F., Jiménez-Alfaro, B., Lengyel, A., Lenoir, J., Pérez-Haase, A., Pielech, R., Prokhorov, V., Rašomavičius, V., Ruprecht, E., Rūsiņa, S., Šilc, U., Škvorc, Ž., Stančić, Z., Tatarenko, I., Chytrý, M., 2023. Disturbance indicator values for European plants. Global Ecology and Biogeography 32, 24–34. https://doi.org/10.1111/geb.13603
#' 
#' Tichý, L., Axmanová, I., Dengler, J., Guarino, R., Jansen, F., Midolo, G., Nobis, M.P., Van Meerbeek, K., Aćić, S., Attorre, F., Bergmeier, E., Biurrun, I., Bonari, G., Bruelheide, H., Campos, J.A., Čarni, A., Chiarucci, A., Ćuk, M., Ćušterevska, R., Didukh, Y., Dítě, D., Dítě, Z., Dziuba, T., Fanelli, G., Fernández-Pascual, E., Garbolino, E., Gavilán, R.G., Gégout, J.-C., Graf, U., Güler, B., Hájek, M., Hennekens, S.M., Jandt, U., Jašková, A., Jiménez-Alfaro, B., Julve, P., Kambach, S., Karger, D.N., Karrer, G., Kavgacı, A., Knollová, I., Kuzemko, A., Küzmič, F., Landucci, F., Lengyel, A., Lenoir, J., Marcenò, C., Moeslund, J.E., Novák, P., Pérez-Haase, A., Peterka, T., Pielech, R., Pignatti, A., Rašomavičius, V., Rūsiņa, S., Saatkamp, A., Šilc, U., Škvorc, Ž., Theurillat, J.-P., Wohlgemuth, T., Chytrý, M., 2023. Ellenberg-type indicator values for European vascular plant species. Journal of Vegetation Science 34, e13168. https://doi.org/10.1111/jvs.13168
#' }
"ExampleData2"

#' Information on the modelled taxa.
#' 
#' Information on the modelled taxa in `elements`, including the taxon_code values underpinning all functions and objects.
#' 
#' Note that further information will be included before v1 of the package is minted.
#'
#' \code{ModelTaxa} 
#'
#' @format A data frame with `r nrow(elements::ModelTaxa)` rows and `r ncol(elements::ModelTaxa)` columns, the definitions of which are:
#' \describe{
#'   \item{taxon_name}{The full taxon name, currently as present in the "Matched concept" column in the EVA.}
#'   \item{taxon_code}{The taxon code, equivalent to the full taxon name but all lower case and with whitespace replaced with underscores.}
#'   \item{eurosl_name}{The taxon name as it appears in EuroSL, where there is a match.}
#'   \item{eurosl_status}{The taxonomic status of the eurosl_name.}
#'   \item{eurosl_id}{The ID of the eurosl_name.}
#'   \item{n_presences_eva}{The number of presences in suitable samples from the EVA.}
#' }
"ModelTaxa"

#' Niche width data
#'
#' A dataset Niche width data for the modelled taxa.
#'
#' \code{NicheWidths} 
#'
#' @format A data frame with `r nrow(elements::NicheWidths)` rows and `r ncol(elements::NicheWidths)`, the definitions of which are:
#' \describe{
#'   \item{variable}{The variable name.}
#'   \item{mean}{The mean variable value.}
#'   \item{min}{The minimum variable value.}
#'   \item{max}{The maximum variable value.}
#'   \item{median}{The median variable value.}
#'   \item{q01}{The 1% quantile value.}
#'   \item{q05}{The 5% quantile value.}
#'   \item{q10}{The 10% quantile value.}
#'   \item{q25}{The 25% quantile value.}
#'   \item{q75}{The 75% quantile value.}
#'   \item{q90}{The 90% quantile value.}
#'   \item{q95}{The 95% quantile value.}
#'   \item{q99}{The 99% quantile value.}
#'   \item{taxon_code}{The taxon, see `elements::ModelTaxa`.}
#' }
"NicheWidths"

#' Model performance measures
#'
#' A dataset containing a number of performance measures for each model.
#'
#' \code{PerformanceMeasures} 
#'
#' @format A data frame with `r nrow(elements::PerformanceMeasures)` rows and `r ncol(elements::PerformanceMeasures)` columns, the definitions of which are:
#' \describe{
#'   \item{taxon_code}{The taxon, see `elements::ModelTaxa`.}
#'   \item{Holdout.PrecisionRecallAreaUnderCurve}{The Precision-Recall Area Under the Curve (PRAUC), calculated using the random holdout sample test data.}
#'   \item{Holdout.Precision}{The Precision, calculated using the random holdout sample test data.}
#'   \item{Holdout.Recall}{The Recall, calculated using the random holdout sample test data.}
#'   \item{Holdout.Sensitivity}{The Sensitivity, calculated using the random holdout sample test data.}
#'   \item{Holdout.Specificity}{The Specificity, calculated using the random holdout sample test data.}
#'   \item{Holdout.BalancedAccuracy}{The Balanced Accuracy, calculated using the random holdout sample test data.}
#'   \item{STCV.BalancedAccuracy}{The Balanced Accuracy, calculated during the modelling fitting process which used spatio-temporal 10-fold cross-validation.}
#' }
"PerformanceMeasures"

#' PDP data
#'
#' A dataset containing the Partial Dependency Profile (PDP) (Molnar, 2018) data for the models, generated using 1000 samples from the training data.
#'
#' \code{PDPData} 
#'
#' @format A data frame with `r nrow(elements::PDPData)` rows and `r ncol(elements::PDPData)` columns, the definitions of which are:
#' \describe{
#'   \item{taxon_code}{The taxon, see `elements::ModelTaxa`.}
#'   \item{x}{The variable value.}
#'   \item{y}{The PDP value.}
#'   \item{variable}{The variable name.}
#' }
"PDPData"

#' Environmental indicator value data
#'
#' A dataset containing a combined dataset of Environmental Indicator Values (EIVs) from Dengler et al (2023), Midolo et al (2023), and Tichý et al (2023).
#'
#' \code{VariableData} 
#'
#' @format A data frame with `r nrow(elements::VariableData)` rows and `r ncol(elements::VariableData)` columns, the definitions of which are:
#' \describe{
#'   \item{taxon_name}{The taxon name.}
#' }
#' @references{
#' Copernicus Climate Change Service, 2021. Downscaled bioclimatic indicators for selected regions from 1950 to 2100 derived from climate projections. https://doi.org/10.24381/CDS.0AB27596
#' 
#' Dengler, J., Jansen, F., Chusova, O., Hüllbusch, E., Nobis, M.P., Meerbeek, K.V., Axmanová, I., Bruun, H.H., Chytrý, M., Guarino, R., Karrer, G., Moeys, K., Raus, T., Steinbauer, M.J., Tichý, L., Tyler, T., Batsatsashvili, K., Bita-Nicolae, C., Didukh, Y., Diekmann, M., Englisch, T., Fernández-Pascual, E., Frank, D., Graf, U., Hájek, M., Jelaska, S.D., Jiménez-Alfaro, B., Julve, P., Nakhutsrishvili, G., Ozinga, W.A., Ruprecht, E.-K., Šilc, U., Theurillat, J.-P., Gillet, F., 2023. Ecological Indicator Values for Europe (EIVE) 1.0. Vegetation Classification and Survey 4, 7–29. https://doi.org/10.3897/VCS.98324
#' 
#' Midolo, G., Herben, T., Axmanová, I., Marcenò, C., Pätsch, R., Bruelheide, H., Karger, D.N., Aćić, S., Bergamini, A., Bergmeier, E., Biurrun, I., Bonari, G., Čarni, A., Chiarucci, A., De Sanctis, M., Demina, O., Dengler, J., Dziuba, T., Fanelli, G., Garbolino, E., Giusso del Galdo, G., Goral, F., Güler, B., Hinojos-Mendoza, G., Jansen, F., Jiménez-Alfaro, B., Lengyel, A., Lenoir, J., Pérez-Haase, A., Pielech, R., Prokhorov, V., Rašomavičius, V., Ruprecht, E., Rūsiņa, S., Šilc, U., Škvorc, Ž., Stančić, Z., Tatarenko, I., Chytrý, M., 2023. Disturbance indicator values for European plants. Global Ecology and Biogeography 32, 24–34. https://doi.org/10.1111/geb.13603
#' 
#' Tichý, L., Axmanová, I., Dengler, J., Guarino, R., Jansen, F., Midolo, G., Nobis, M.P., Van Meerbeek, K., Aćić, S., Attorre, F., Bergmeier, E., Biurrun, I., Bonari, G., Bruelheide, H., Campos, J.A., Čarni, A., Chiarucci, A., Ćuk, M., Ćušterevska, R., Didukh, Y., Dítě, D., Dítě, Z., Dziuba, T., Fanelli, G., Fernández-Pascual, E., Garbolino, E., Gavilán, R.G., Gégout, J.-C., Graf, U., Güler, B., Hájek, M., Hennekens, S.M., Jandt, U., Jašková, A., Jiménez-Alfaro, B., Julve, P., Kambach, S., Karger, D.N., Karrer, G., Kavgacı, A., Knollová, I., Kuzemko, A., Küzmič, F., Landucci, F., Lengyel, A., Lenoir, J., Marcenò, C., Moeslund, J.E., Novák, P., Pérez-Haase, A., Peterka, T., Pielech, R., Pignatti, A., Rašomavičius, V., Rūsiņa, S., Saatkamp, A., Šilc, U., Škvorc, Ž., Theurillat, J.-P., Wohlgemuth, T., Chytrý, M., 2023. Ellenberg-type indicator values for European vascular plant species. Journal of Vegetation Science 34, e13168. https://doi.org/10.1111/jvs.13168
#' }
"VariableData"

#' Environmental indicator value names
#'
#' A dataset containing a lookup for the Ecological Indicator Value (EIV) codes used throughout the `elements` package and full variable namesnames.
#'
#' \code{VariableNames} 
#'
#' @format A data frame with `r nrow(elements::VariableNames)` rows and `r ncol(elements::VariableNames)` columns, the definitions of which are:
#' \describe{
#'   \item{raw_name}{The raw name of the variable as present in the parent dataset.}
#'   \item{variable_code}{The variable code, used throughout the `elements` R package.}
#'   \item{variable_name}{A 'tidy' variable name without spaces.}
#'   \item{variable_plot_name}{A 'tidy' variable name with spaces.}
#'   \item{model_var}{A boolean indicating whether the variable was included as a predictor.}
#' }
"VariableNames"
