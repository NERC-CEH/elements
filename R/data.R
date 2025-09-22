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

#' EUNISDiagnosticTaxa
#'
#' A tibble containing the diagnostic taxa associated with each EUNIS habitat.
#'
#' \code{EUNISDiagnosticTaxa} 
#'
#' @format A tibble with `r nrow(elements::EUNISDiagnosticTaxa)` rows and `r ncol(elements::EUNISDiagnosticTaxa)` columns.
#' 
#' \describe{
#'   \item{eunis_code}{The EUNIS habitat code.}
#'   \item{eunis_name}{The EUNIS habitat name.}
#'   \item{taxon_name}{The name of the taxon as it appears in Chytrý et al (2020).}
#'   \item{taxon_code}{The taxon code as it appears in `elements::TaxonomicBackbone`.}
#'   \item{phi_100}{The phi coefficient of association between the taxon and EUNIS habitat, a measure of fidelity.}
#' }
#' 
#' @references Chytrý, M., Tichý, L., Hennekens, S.M., Knollová, I., Janssen, J.A.M., Rodwell, J.S., Peterka, T., Marcenò, C., Landucci, F., Danihelka, J., Hájek, M., Dengler, J., Novák, P., Zukal, D., Jiménez-Alfaro, B., Mucina, L., Abdulhak, S., Aćić, S., Agrillo, E., Attorre, F., Bergmeier, E., Biurrun, I., Boch, S., Bölöni, J., Bonari, G., Braslavskaya, T., Bruelheide, H., Campos, J.A., Čarni, A., Casella, L., Ćuk, M., Ćušterevska, R., De Bie, E., Delbosc, P., Demina, O., Didukh, Y., Dítě, D., Dziuba, T., Ewald, J., Gavilán, R.G., Gégout, J.-C., Giusso del Galdo, G.P., Golub, V., Goncharova, N., Goral, F., Graf, U., Indreica, A., Isermann, M., Jandt, U., Jansen, F., Jansen, J., Jašková, A., Jiroušek, M., Kącki, Z., Kalníková, V., Kavgacı, A., Khanina, L., Yu. Korolyuk, A., Kozhevnikova, M., Kuzemko, A., Küzmič, F., Kuznetsov, O.L., Laiviņš, M., Lavrinenko, I., Lavrinenko, O., Lebedeva, M., Lososová, Z., Lysenko, T., Maciejewski, L., Mardari, C., Marinšek, A., Napreenko, M.G., Onyshchenko, V., Pérez-Haase, A., Pielech, R., Prokhorov, V., Rašomavičius, V., Rodríguez Rojo, M.P., Rūsiņa, S., Schrautzer, J., Šibík, J., Šilc, U., Škvorc, Ž., Smagin, V.A., Stančić, Z., Stanisci, A., Tikhonova, E., Tonteri, T., Uogintas, D., Valachovič, M., Vassilev, K., Vynokurov, D., Willner, W., Yamalov, S., Evans, D., Palitzsch Lund, M., Spyropoulou, R., Tryfon, E., Schaminée, J.H.J., 2020. EUNIS Habitat Classification: Expert system, characteristic species combinations and distribution maps of European habitats. Applied Vegetation Science 23, 648–675. https://doi.org/10.1111/avsc.12519
"EUNISDiagnosticTaxa"

#' EUNISConstantTaxa
#'
#' A tibble containing the constant taxa associated with each EUNIS habitat.
#'
#' \code{EUNISConstantTaxa} 
#'
#' @format A tibble with `r nrow(elements::EUNISConstantTaxa)` rows and `r ncol(elements::EUNISConstantTaxa)` columns.
#' 
#' \describe{
#'   \item{eunis_code}{The EUNIS habitat code.}
#'   \item{eunis_name}{The EUNIS habitat name.}
#'   \item{taxon_name}{The name of the taxon as it appears in Chytrý et al (2020).}
#'   \item{taxon_code}{The taxon code as it appears in `elements::TaxonomicBackbone`.}
#'   \item{perc_occ_freq}{The percentage occurrence frequency of the taxon in the EUNIS habitat.}
#' }
#' 
#' @references Chytrý, M., Tichý, L., Hennekens, S.M., Knollová, I., Janssen, J.A.M., Rodwell, J.S., Peterka, T., Marcenò, C., Landucci, F., Danihelka, J., Hájek, M., Dengler, J., Novák, P., Zukal, D., Jiménez-Alfaro, B., Mucina, L., Abdulhak, S., Aćić, S., Agrillo, E., Attorre, F., Bergmeier, E., Biurrun, I., Boch, S., Bölöni, J., Bonari, G., Braslavskaya, T., Bruelheide, H., Campos, J.A., Čarni, A., Casella, L., Ćuk, M., Ćušterevska, R., De Bie, E., Delbosc, P., Demina, O., Didukh, Y., Dítě, D., Dziuba, T., Ewald, J., Gavilán, R.G., Gégout, J.-C., Giusso del Galdo, G.P., Golub, V., Goncharova, N., Goral, F., Graf, U., Indreica, A., Isermann, M., Jandt, U., Jansen, F., Jansen, J., Jašková, A., Jiroušek, M., Kącki, Z., Kalníková, V., Kavgacı, A., Khanina, L., Yu. Korolyuk, A., Kozhevnikova, M., Kuzemko, A., Küzmič, F., Kuznetsov, O.L., Laiviņš, M., Lavrinenko, I., Lavrinenko, O., Lebedeva, M., Lososová, Z., Lysenko, T., Maciejewski, L., Mardari, C., Marinšek, A., Napreenko, M.G., Onyshchenko, V., Pérez-Haase, A., Pielech, R., Prokhorov, V., Rašomavičius, V., Rodríguez Rojo, M.P., Rūsiņa, S., Schrautzer, J., Šibík, J., Šilc, U., Škvorc, Ž., Smagin, V.A., Stančić, Z., Stanisci, A., Tikhonova, E., Tonteri, T., Uogintas, D., Valachovič, M., Vassilev, K., Vynokurov, D., Willner, W., Yamalov, S., Evans, D., Palitzsch Lund, M., Spyropoulou, R., Tryfon, E., Schaminée, J.H.J., 2020. EUNIS Habitat Classification: Expert system, characteristic species combinations and distribution maps of European habitats. Applied Vegetation Science 23, 648–675. https://doi.org/10.1111/avsc.12519
"EUNISConstantTaxa"

#' EUNISDominantTaxa
#'
#' A tibble containing the constant taxa associated with each EUNIS habitat.
#'
#' \code{EUNISDominantTaxa} 
#'
#' @format A tibble with `r nrow(elements::EUNISDominantTaxa)` rows and `r ncol(elements::EUNISDominantTaxa)` columns.
#' 
#' \describe{
#'   \item{eunis_code}{The EUNIS habitat code.}
#'   \item{eunis_name}{The EUNIS habitat name.}
#'   \item{taxon_name}{The name of the taxon as it appears in Chytrý et al (2020).}
#'   \item{taxon_code}{The taxon code as it appears in `elements::TaxonomicBackbone`.}
#'   \item{perc_freq_dom}{The percentage frequency of plots in which the species occurs with a cover larger than 25%.}
#' }
#' 
#' @references Chytrý, M., Tichý, L., Hennekens, S.M., Knollová, I., Janssen, J.A.M., Rodwell, J.S., Peterka, T., Marcenò, C., Landucci, F., Danihelka, J., Hájek, M., Dengler, J., Novák, P., Zukal, D., Jiménez-Alfaro, B., Mucina, L., Abdulhak, S., Aćić, S., Agrillo, E., Attorre, F., Bergmeier, E., Biurrun, I., Boch, S., Bölöni, J., Bonari, G., Braslavskaya, T., Bruelheide, H., Campos, J.A., Čarni, A., Casella, L., Ćuk, M., Ćušterevska, R., De Bie, E., Delbosc, P., Demina, O., Didukh, Y., Dítě, D., Dziuba, T., Ewald, J., Gavilán, R.G., Gégout, J.-C., Giusso del Galdo, G.P., Golub, V., Goncharova, N., Goral, F., Graf, U., Indreica, A., Isermann, M., Jandt, U., Jansen, F., Jansen, J., Jašková, A., Jiroušek, M., Kącki, Z., Kalníková, V., Kavgacı, A., Khanina, L., Yu. Korolyuk, A., Kozhevnikova, M., Kuzemko, A., Küzmič, F., Kuznetsov, O.L., Laiviņš, M., Lavrinenko, I., Lavrinenko, O., Lebedeva, M., Lososová, Z., Lysenko, T., Maciejewski, L., Mardari, C., Marinšek, A., Napreenko, M.G., Onyshchenko, V., Pérez-Haase, A., Pielech, R., Prokhorov, V., Rašomavičius, V., Rodríguez Rojo, M.P., Rūsiņa, S., Schrautzer, J., Šibík, J., Šilc, U., Škvorc, Ž., Smagin, V.A., Stančić, Z., Stanisci, A., Tikhonova, E., Tonteri, T., Uogintas, D., Valachovič, M., Vassilev, K., Vynokurov, D., Willner, W., Yamalov, S., Evans, D., Palitzsch Lund, M., Spyropoulou, R., Tryfon, E., Schaminée, J.H.J., 2020. EUNIS Habitat Classification: Expert system, characteristic species combinations and distribution maps of European habitats. Applied Vegetation Science 23, 648–675. https://doi.org/10.1111/avsc.12519
"EUNISDominantTaxa"

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

#' The EVA plot used to form the example scenarios
#'
#' A dataset containing the taxon presences and percentage cover for the EVA plot used to form the example scenarios present in `elements::ExampleScenarios`.
#'
#' \code{ExamplePlot} 
#'
#' @format A data frame with `r nrow(elements::ExamplePlot)` rows and `r ncol(elements::ExamplePlot)` columns, the definitions of which are:
#' \describe{
#'   \item{taxon_name}{The scientific names of the taxa present in the example plot.}
#'   \item{taxon_code}{The taxon codes for the taxon_name values, see `elements::TaxonomicBackbone`.}
#'   \item{cover_perc}{The percentage cover of the taxa present in example plot.}
#' }
"ExamplePlot"

#' Predictor data for three example scenarios
#'
#' A dataset containing predictor data for five example scenarios, in three groups: 
#' (A) Climate Change - RCP4.5 and (A) Climate Change - RCP8.5,
#' (B) Grazing Intensification and (B) Grazing Reduction, abd
#' (C) Nutrient Enrichment.
#'
#' \code{ExampleScenarios} 
#'
#' @format A data frame with `r nrow(elements::ExampleScenarios)` rows and `r ncol(elements::ExampleScenarios)` columns, the definitions of which are:
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
#'   \item{scenario}{The scenario name.}
#'   \item{timeslice}{The scenario timeslice, either a year or period.}
#'   \item{scenario_code}{The scenario code: a, b, or c.}
#' }
"ExampleScenarios"

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
#' The taxon names and codes for the modeled taxa in the EVA, with the associated taxon concept information retireved from GBIF.
#'
#' \code{TaxonomicBackbone} 
#'
#' @format A data frame with `r nrow(elements::TaxonomicBackbone)` rows and `r ncol(elements::TaxonomicBackbone)` columns, the definitions of which are:
#' \describe{
#'   \item{taxon_name}{The taxon names for the modelled taxa.}
#'   \item{taxon_code}{The taxon codes used throughout the package, formed from the taxon_name values by coercing all letters to lower and replacing whitespace with underscores.}
#'   \item{scientificName}{The full scientific name of the taxon, which includes the author. Retrieved from GBIF.}
#'   \item{canonicalName}{The full name of the taxon. Retrieved from GBIF.}
#'   \item{species}{The accepted name for the taxon, following GBIF.}
#'   \item{genus}{The parent Genus taxon associated with the Species.}
#'   \item{family}{The parent Family taxon associated with the Species.}
#'   \item{order}{The parent Order taxon associated with the Species.}
#'   \item{class}{The parent Class taxon associated with the Species.}
#'   \item{phylum}{The parent Phylum taxon associated with the Species.}
#'   \item{kingdom}{The parent Kingdom taxon associated with the Species.}
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

#' Presence-Absence Imbalances
#'
#' The number of presences and absences in the EVA, suitable samples within the EVA, and the training and test data, along with the presence-absence and absence-presence imbalance ratios.
#'
#' \code{Imbalances} 
#'
#' @format A data frame with `r nrow(elements::Imbalances)` rows and `r ncol(elements::Imbalances)` columns, the definitions of which are:
#' \describe{
#'   \item{Stage}{The plot selection 'stage'.}
#'   \item{Absent}{The number of absences.}
#'   \item{Present}{The number or presences.}
#'   \item{PA_Imbalance}{The presence-absence imbalance ratio.}
#'   \item{AP_Imbalance}{The absence-presence imbalance ratio.}
#'   \item{taxon_code}{The taxon code, see `elements::TaxonomicBackbone`}
#' }
"Imbalances"
