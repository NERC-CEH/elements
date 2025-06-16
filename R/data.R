#' ALE data
#'
#' A dataset containing the Accumulated Local Effect (ALE) (Molnar, 2018) data for the models, generated using 1000 samples from the training data.
#'
#' \code{ALEData} 
#'
#' @format A data frame with `r nrow(elements::ALEData)` rows and `r ncol(elements::ALEData)` columns, the definitions of which are:
#' \describe{
#'   \item{taxon_code}{The taxon, see `elements::TaxonomicBackbone`.}
#'   \item{x}{The variable value.}
#'   \item{y}{The ALE value.}
#'   \item{variable}{The variable name.}
#' }
"ALEData"

#' EuroSL data
#' 
#' Selected columns for the accepted taxa in the European Species List (EuroSL) database.
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
#'   \item{taxon_code}{The taxon, see `elements::TaxonomicBackbone`.}
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
#'   \item{taxon_code}{The taxon, see `elements::TaxonomicBackbone`.}
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
#'   \item{taxon_code}{The taxon, see `elements::TaxonomicBackbone`.}
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
#'   \item{taxon_code}{The taxon, see `elements::TaxonomicBackbone`.}
#'   \item{x}{The variable value.}
#'   \item{y}{The PDP value.}
#'   \item{variable}{The variable name.}
#' }
"PDPData"

#' Taxonomic backbone
#' 
#' The taxon names and codes for the modeled taxa in the EVA, with the associated taxon concept information from EuroSL, and parent taxa.
#'
#' \code{TaxonomicBackbone} 
#'
#' @format A data frame with `r nrow(elements::TaxonomicBackbone)` rows and `r ncol(elements::TaxonomicBackbone)` columns, the definitions of which are:
#' \describe{
#'   \item{taxon_code}{The taxon codes used throughout the package, formed from the taxon_name values by coercing all letters to lower and replacing whitespace with underscores.}
#'   \item{taxon_name}{The taxon names for the modelled taxa, as they appear in the EVA.}
#'   \item{taxon_concept}{The acccepted taxon concepts for each taxon_name value, following the authority of the EuroSL - see `elements::EuroSL`}
#'   \item{eurosl_status}{The taxonomic status of the taxon_name, following the authority of the EuroSL.}
#'   \item{eurosl_id}{The EuroSL ID code for the taxon_name.}
#'   \item{Species}{The Species name associated with the taxon_name.}
#'   \item{Genus}{The parent Genus taxon associated with the taxon_name.}
#'   \item{Tribe}{The parent Tribe taxon associated with the taxon_name.}
#'   \item{Family}{The parent Family taxon associated with the taxon_name.}
#'   \item{Order}{The parent Order taxon associated with the taxon_name.}
#'   \item{Superorder}{The parent Superorder taxon associated with the taxon_name.}
#'   \item{Class}{The parent Class taxon associated with the taxon_name.}
#'   \item{Subdivision}{The parent Subdivision taxon associated with the taxon_name.}
#'   \item{Phylum}{The parent Phylum taxon associated with the taxon_name.}
#'   \item{Root}{The parent Root taxon associated with the taxon_name.}
#'   \item{Section}{The Section name associated with the taxon_name.}
#'   \item{Species Aggregate}{The Species Aggregate name associated with the taxon_name.}
#'   \item{Subclass}{The parent Subclass taxon associated with the taxon_name.}
#'   \item{Division}{The parent Division taxon associated with the taxon_name.}
#'   \item{Suprageneric Taxon}{The parent Suprageneric Taxon taxon associated with the taxon_name.}
#'   \item{Subfamily}{The parent Subfamily taxon associated with the taxon_name.}
#'   \item{Subspecies}{The Subspecies name associated with the taxon_name.}
#'   \item{Variety}{The Variety name associated with the taxon_name.}
#'   \item{Coll. species}{The Coll. species name associated with the taxon_name.}
#'   \item{n_presences_eva}{The number of presences of the taxon (taxon_name) in the EVA, only considering plots with valid coordinates and years.}
#' }
"TaxonomicBackbone"

#' Environmental indicator value data
#'
#' A dataset containing a combined dataset of Environmental Indicator Values (EIVs) from Dengler et al (2023), Midolo et al (2023), and Tichý et al (2023).
#'
#' \code{VariableData} 
#'
#' @format A data frame with `r nrow(elements::VariableData)` rows and `r ncol(elements::VariableData)` columns, the definitions of which are:
#' \describe{
#'   \item{DF}{Disturbance frequency (Midolo et al., 2023)}
#'   \item{DF.sd}{Disturbance frequency standard deviation (Midolo et al., 2023)}
#'   \item{DFH.sd}{Disturbance frequency herb layer standard deviation (Midolo et al., 2023)}
#'   \item{DFh}{Disturbance frequency herb layer (Midolo et al., 2023)}
#'   \item{DS}{Disturbance severity (Midolo et al., 2023)}
#'   \item{DS.sd}{Disturbance severity standard deviation (Midolo et al., 2023)}
#'   \item{DSH.sd}{Disturbance severity herb layer standard deviation (Midolo et al., 2023)}
#'   \item{DSh}{Disturbance severity herb layer (Midolo et al., 2023)}
#'   \item{GP}{Grazing pressure (Midolo et al., 2023)}
#'   \item{GP.sd}{Grazing pressure standard deviation (Midolo et al., 2023)}
#'   \item{L}{Light (Dengler et al., 2023)}
#'   \item{L.nw}{Light niche width (Dengler et al., 2023)}
#'   \item{M}{Moisture (Dengler et al., 2023)}
#'   \item{M.nw}{Moisture niche width (Dengler et al., 2023)}
#'   \item{MF}{Mowing frequency (Midolo et al., 2023)}
#'   \item{MF.sd}{Mowing frequency standard deviation (Midolo et al., 2023)}
#'   \item{N}{Nitrogen (Dengler et al., 2023)}
#'   \item{N.nw}{Nitrogen niche width (Dengler et al., 2023)}
#'   \item{R}{Reaction (Dengler et al., 2023)}
#'   \item{R.nw}{Reaction niche width (Dengler et al., 2023)}
#'   \item{S}{Salinity (Tichý et al 2023)}
#'   \item{SD}{Soil disturbance (Midolo et al., 2023)}
#'   \item{SD.sd}{Soil disturbance standard deviation (Midolo et al., 2023)}
#'   \item{T}{Temperature (Dengler et al., 2023)}
#'   \item{T.nw}{Temperature niche width (Dengler et al., 2023)}
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

#' Environmental variable names and codes
#'
#' A dataset containing a lookup for the Ecological Indicator Value (EIV) and bioclimatic variable codes used throughout the `elements` package and full variable namesnames.
#'
#' \code{VariableLookup} 
#'
#' @format A data frame with `r nrow(elements::VariableLookup)` rows and `r ncol(elements::VariableLookup)` columns, the definitions of which are:
#' \describe{
#'   \item{raw_name}{The raw name of the variable as present in the parent dataset.}
#'   \item{variable_code}{The variable code, used throughout the `elements` R package.}
#'   \item{variable_name}{A 'tidy' variable name without spaces.}
#'   \item{variable_plot_name}{A 'tidy' variable name with spaces.}
#'   \item{model_var}{A boolean indicating whether the variable was included as a predictor.}
#' }
"VariableLookup"

#' Model variables codes
#'
#' A vector containing the environmental variable codes for the model variables; 
#' equivalent to the variable_code values in the `elements::VariableLookup` data frame for rows where model_var is TRUE.
#'
#' \code{VariableNames} 
#'
#' @format A vector containing `r nrow(elements::VariableNames)` strings.
"VariableNames"
