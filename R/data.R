#' ALE data
#'
#' A dataset containing the Accumulated Local Effect (ALE) (Molnar, 2018) data for the models, generated using 1000 samples from the training data.
#'
#' \code{ALEData} 
#'
#' @format A data frame with `r nrow(elements::ALEData)` rows and `r ncol(elements::ALEData)` columns, the definitions of which are:
#' \describe{
#'   \item{taxon_code}{The taxon, see `elements::ModelledTaxaCodes`.}
#'   \item{x}{The variable value.}
#'   \item{y}{The ALE value.}
#'   \item{variable}{The variable name.}
#' }
"ALEData"

#' Model Object Availability
#'
#' A data frame containing boolean (TRUE/FALSE) values indicating the objects/information
#' available for each modelled taxon.
#'
#' \code{ModelObjectAvailability} 
#'
#' @format A data frame with `r nrow(elements::ModelObjectAvailability)` rows and `r ncol(elements::ModelObjectAvailability)` columns, the definitions of which are:
#' \describe{
#'   \item{taxon_code}{The taxon, see `elements::ModelledTaxaCodes`.}
#'   \item{imbalance}{A boolean value indicating whether the taxon has data in `elements::Imbalances`.}
#'   \item{nichewidth}{A boolean value indicating whether the taxon has data in `elements::NicheWidths`.}
#'   \item{performance}{A boolean value indicating whether the taxon has data in `elements::PerformanceMeasures`.}
#'   \item{ale}{A boolean value indicating whether the taxon has data in `elements::ALEData`.}
#'   \item{pdp}{A boolean value indicating whether the taxon has data in `elements::PDPData`.}
#'   \item{hoa}{A boolean value indicating whether the taxon has data in `elements::HOAData`.}
#'   \item{model}{A boolean value indicating whether the taxon has a ecological niche model as present in ./inst/extdata/Models.}
#' }
"ModelObjectAvailability"

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
#'   \item{taxon_code}{The taxon, see `elements::ModelledTaxaCodes`.}
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
#'   \item{taxon_code}{The taxon, see `elements::ModelledTaxaCodes`.}
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
#'   \item{taxon_code}{The taxon, see `elements::ModelledTaxaCodes`.}
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
#'   \item{tmax_sm}{Maximum temperature in the warmest month}
#'   \item{tmin_wt}{Minimum temperature in the coldest month}
#'   \item{prec_wt}{Precipitation in the wettest quarter}
#'   \item{prec_sm}{Precipitation in the driest quarter}
#' }
#' @references{
#' Marchi, M., Castellanos-Acuña, D., Hamann, A., Wang, T., Ray, D., Menzel, A., 2020. ClimateEU, scale-free climate normals, historical time series, and future projections for Europe. Sci Data 7, 428. https://doi.org/10.1038/s41597-020-00763-0
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
#' Stellaria graminea (stellaria_graminea) and Silene flos-cuculi (silene_flos-cuculi_aggr).
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
#'   \item{tmax_sm}{Maximum temperature in the warmest month}
#'   \item{tmin_wt}{Minimum temperature in the coldest month}
#'   \item{prec_wt}{Precipitation in the wettest quarter}
#'   \item{prec_sm}{Precipitation in the driest quarter}
#'   \item{taxon_code}{The taxon, see `elements::ModelledTaxaCodes`.}
#' }
#' @references{
#' Marchi, M., Castellanos-Acuña, D., Hamann, A., Wang, T., Ray, D., Menzel, A., 2020. ClimateEU, scale-free climate normals, historical time series, and future projections for Europe. Sci Data 7, 428. https://doi.org/10.1038/s41597-020-00763-0
#' 
#' Dengler, J., Jansen, F., Chusova, O., Hüllbusch, E., Nobis, M.P., Meerbeek, K.V., Axmanová, I., Bruun, H.H., Chytrý, M., Guarino, R., Karrer, G., Moeys, K., Raus, T., Steinbauer, M.J., Tichý, L., Tyler, T., Batsatsashvili, K., Bita-Nicolae, C., Didukh, Y., Diekmann, M., Englisch, T., Fernández-Pascual, E., Frank, D., Graf, U., Hájek, M., Jelaska, S.D., Jiménez-Alfaro, B., Julve, P., Nakhutsrishvili, G., Ozinga, W.A., Ruprecht, E.-K., Šilc, U., Theurillat, J.-P., Gillet, F., 2023. Ecological Indicator Values for Europe (EIVE) 1.0. Vegetation Classification and Survey 4, 7–29. https://doi.org/10.3897/VCS.98324
#' 
#' Midolo, G., Herben, T., Axmanová, I., Marcenò, C., Pätsch, R., Bruelheide, H., Karger, D.N., Aćić, S., Bergamini, A., Bergmeier, E., Biurrun, I., Bonari, G., Čarni, A., Chiarucci, A., De Sanctis, M., Demina, O., Dengler, J., Dziuba, T., Fanelli, G., Garbolino, E., Giusso del Galdo, G., Goral, F., Güler, B., Hinojos-Mendoza, G., Jansen, F., Jiménez-Alfaro, B., Lengyel, A., Lenoir, J., Pérez-Haase, A., Pielech, R., Prokhorov, V., Rašomavičius, V., Ruprecht, E., Rūsiņa, S., Šilc, U., Škvorc, Ž., Stančić, Z., Tatarenko, I., Chytrý, M., 2023. Disturbance indicator values for European plants. Global Ecology and Biogeography 32, 24–34. https://doi.org/10.1111/geb.13603
#' 
#' Tichý, L., Axmanová, I., Dengler, J., Guarino, R., Jansen, F., Midolo, G., Nobis, M.P., Van Meerbeek, K., Aćić, S., Attorre, F., Bergmeier, E., Biurrun, I., Bonari, G., Bruelheide, H., Campos, J.A., Čarni, A., Chiarucci, A., Ćuk, M., Ćušterevska, R., Didukh, Y., Dítě, D., Dítě, Z., Dziuba, T., Fanelli, G., Fernández-Pascual, E., Garbolino, E., Gavilán, R.G., Gégout, J.-C., Graf, U., Güler, B., Hájek, M., Hennekens, S.M., Jandt, U., Jašková, A., Jiménez-Alfaro, B., Julve, P., Kambach, S., Karger, D.N., Karrer, G., Kavgacı, A., Knollová, I., Kuzemko, A., Küzmič, F., Landucci, F., Lengyel, A., Lenoir, J., Marcenò, C., Moeslund, J.E., Novák, P., Pérez-Haase, A., Peterka, T., Pielech, R., Pignatti, A., Rašomavičius, V., Rūsiņa, S., Saatkamp, A., Šilc, U., Škvorc, Ž., Theurillat, J.-P., Wohlgemuth, T., Chytrý, M., 2023. Ellenberg-type indicator values for European vascular plant species. Journal of Vegetation Science 34, e13168. https://doi.org/10.1111/jvs.13168
#' }
"ExampleData2"

#' A set of example vegetation plots
#'
#' A dataset containing the taxon presences and percentage cover for a set of vegetation plots recorded in a spring-fed calcareous fen - Redcar Field, County Durham, United Kingdom.
#' These plots are not currently included in the EVA and were not included in the model training data, therefore representing an independent sample.
#' These plots are used to form the example scenarios present in `elements::ExampleScenarios`.
#'
#' \code{ExamplePlots} 
#'
#' @format A data frame with `r nrow(elements::ExamplePlots)` rows and `r ncol(elements::ExamplePlots)` columns, the definitions of which are:
#' \describe{
#'   \item{plot_id}{The plot id.}
#'   \item{taxon}{The scientific names of the taxa present in the example plot.}
#'   \item{taxon_code}{The taxon, see `elements::ModelledTaxaCodes`.}
#'   \item{cover_perc}{The percentage cover of the taxa present in example plot.}
#' }
"ExamplePlots"

#' Univariate gradient intervals for each environmental variable
#'
#' A named list containing univariate gradient intervals for each environmental variable in `elements::VariableNames`.
#'
#' \code{Gradients} 
#'
#' @format A named list with `length(elements::Gradients)` items.
#' \describe{
#'   \item{L}{Light - 0:10}
#'   \item{M}{Soil Moisture - 0:10}
#'   \item{N}{Soil Nitrogen - 0:10}
#'   \item{R}{Reaction - 0:10}
#'   \item{S}{Salinity - 0:10}
#'   \item{SD}{Soil Disturbance - 0:1}
#'   \item{GP}{Grazing Pressure - 0:1}
#'   \item{tmax_sm}{Maximum temperature in the warmest month - -5:55}
#'   \item{tmin_wt}{Minimum temperature in the coldest month - -30:15}
#'   \item{prec_wt}{Precipitation in the wettest quarter - 0:1700}
#'   \item{prec_sm}{Precipitation in the driest quarter - 0:800}
#' }
"Gradients"

#' HOA data
#'
#' A dataset containing the a set of predictions for each variable along its gradient (see `elements::Gradients`) 
#' produced using the `elements::predict_occ` function with the 'holdopt' argument set to all other variables.
#'
#' \code{HOAData} 
#'
#' @format A data frame with `r nrow(elements::HOAData)` rows and `r ncol(elements::HOAData)` columns, the definitions of which are:
#' \describe{
#'   \item{taxon_code}{The taxon, see `elements::ModelledTaxaCodes`.}
#'   \item{x}{The variable value.}
#'   \item{y}{The PDP value.}
#'   \item{variable}{The variable name, see `elements::VariableNames`.}
#' }
"HOAData"

#' Predictor data for three example scenarios
#'
#' A dataset containing predictor data for four sets of example scenarios: 
#' (A) Climate Change: a.i - ssp126, a.ii - ssp245, a.iii - ssp370, a.iv - ssp585.
#' (B) Grazing: b.i - Grazing intensification, b.i - Grazing reduction
#' (C) Nutrient: c.i - Nutrient Enrichment, c.ii - Nutrient Reduction
#' (D) Interactions: d.i - Climate Change + Nutrient Reduction + Grazing Reduction, 
#' d.ii - Climate Change + Nutrient Addition + Grazing Reduction,
#' d.iii - Climate Change + Nutrient Reduction + Grazing Intensification, 
#' d.iv - Climate Change + Nutrient Addition + Grazing Intensification
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
#'   \item{tmax_sm}{Maximum temperature in the warmest month}
#'   \item{tmin_wt}{Minimum temperature in the coldest month}
#'   \item{prec_wt}{Precipitation in the wettest quarter}
#'   \item{prec_sm}{Precipitation in the driest quarter}
#'   \item{scenario_code}{The scenario code.}
#'   \item{scenario_stage}{The scenario stage, either 1) baseline, or 2) projection.}
#'   \item{climate_scenario}{The SSP climate scenario.}
#'   \item{timeslice}{The scenario timeslice, either a year or period.}
#'   \item{scenario_name}{The scenario name.}
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
#'   \item{taxon_code}{The taxon, see `elements::ModelledTaxaCodes`.}
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
#'   \item{taxon_code}{The taxon, see `elements::ModelledTaxaCodes`.}
#'   \item{Holdout.PrecisionRecallAreaUnderCurve}{The Precision-Recall Area Under the Curve (PRAUC), calculated using the random holdout sample test data.}
#'   \item{Holdout.Precision}{The Precision, calculated using the random holdout sample test data.}
#'   \item{Holdout.Recall}{The Recall, calculated using the random holdout sample test data.}
#'   \item{Holdout.Sensitivity}{The Sensitivity, calculated using the random holdout sample test data.}
#'   \item{Holdout.Specificity}{The Specificity, calculated using the random holdout sample test data.}
#'   \item{Holdout.BalancedAccuracy}{The Balanced Accuracy, calculated using the random holdout sample test data.}
#'   \item{Holdout.TrueSkillStatistic}{The True Skill Statistic, calculated using the random holdout sample test data.}
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
#'   \item{taxon_code}{The taxon, see `elements::ModelledTaxaCodes`.}
#'   \item{x}{The variable value.}
#'   \item{y}{The PDP value.}
#'   \item{variable}{The variable name.}
#' }
"PDPData"

#' Maximum Probabilities
#'
#' A data frame containing the maximum predicted probability values for each taxon using the training data as predictors.
#' As SVM models were used there is limited embodied rarity and so these values are usally close to 1.
#'
#' \code{MaximumProbabilities} 
#'
#' @format A data frame with `r nrow(elements::MaximumProbabilities)` rows and `r ncol(elements::MaximumProbabilities)` columns, the definitions of which are:
#' \describe{
#'   \item{taxon_code}{The taxon, see `elements::ModelledTaxaCodes`.}
#'   \item{Present}{The maxmimum probability of presence.}
#' }
"MaximumProbabilities"

#' Taxonomic backbone
#' 
#' The higher taxa associated with the modelled taxa, retrieved from EuroSL.
#'
#' \code{TaxonomicBackbone} 
#'
#' @format A data frame with `r nrow(elements::TaxonomicBackbone)` rows and `r ncol(elements::TaxonomicBackbone)` columns, the definitions of which are:
#' \describe{
#'   \item{taxon_code}{The taxon, see `elements::ModelledTaxaCodes`.}
#'   \item{taxon_code_no_suffix}{The taxon code with no 'aggr' suffix.}
#'   \item{Root}{The Root taxon.}
#'   \item{Phylum}{The parent Phylum taxon associated with the Species.}
#'   \item{Subdivision}{The parent Subdivision taxon associated with the Species.}
#'   \item{Class}{The parent Class taxon associated with the Species.}
#'   \item{Superorder}{The parent Superorder taxon associated with the Species.}
#'   \item{Family}{The parent Family taxon associated with the Species.}
#'   \item{Genus}{The parent Genus taxon associated with the Species.}
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
#'   \item{taxon_name}{The taxon name.}
#'   \item{taxon_code}{The taxon, see `elements::ModelledTaxaCodes`. Not all modelled taxa have EIV values from the original datasets.}
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
#' }
#' @references{
#' Marchi, M., Castellanos-Acuña, D., Hamann, A., Wang, T., Ray, D., Menzel, A., 2020. ClimateEU, scale-free climate normals, historical time series, and future projections for Europe. Sci Data 7, 428. https://doi.org/10.1038/s41597-020-00763-0
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
#' \code{VariableNamesLookup} 
#'
#' @format A data frame with `r nrow(elements::VariableNamesLookup)` rows and `r ncol(elements::VariableNamesLookup)` columns, the definitions of which are:
#' \describe{
#'   \item{raw_name}{The raw name of the variable as present in the parent dataset.}
#'   \item{variable_code}{The variable code, used throughout the `elements` R package.}
#'   \item{variable_name}{A 'tidy' variable name without spaces.}
#'   \item{variable_plot_name}{A 'tidy' variable name with spaces.}
#'   \item{model_var}{A boolean indicating whether the variable was included as a predictor.}
#' }
"VariableNamesLookup"

#' Model variables codes
#'
#' A vector containing the environmental variable codes for the model variables; 
#' equivalent to the variable_code values in the `elements::VariableNamesLookup` data frame for rows where model_var is TRUE.
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
#'   \item{taxon_code}{The taxon, see `elements::ModelledTaxaCodes`.}
#' }
"Imbalances"

#' Modelling Taxa Lookup
#' 
#' A lookup between the EVA taxon names, aggregated taxon names, and taxon codes used in the `elements` package.
#' 
#' \code{ModellingTaxaLookup} 
#'
#' @format A data frame with `r nrow(elements::ModellingTaxaLookup)` rows and `r ncol(elements::ModellingTaxaLookup)` columns, the definitions of which are:
#' \describe{
#'   \item{taxon}{The taxon name as present in the EVA.}
#'   \item{taxon_name}{The aggregated taxon name for use in `elements`.}
#'   \item{taxon_code}{The aggregated taxon code, see `elements::ModelledTaxaCodes`.}
#' }
"ModellingTaxaLookup"

#' Taxon codes for taxa with models
#' 
#' Taxon codes for taxa which were successfully modelled as present in the taxon_code
#' column of `elements::ModellingTaxaLookup`.
#'
#' \code{ModelledTaxaCodes} 
#'
#' @format A vector containing `r length(elements::ModelledTaxaCodes)` strings.
"ModelledTaxaCodes"
