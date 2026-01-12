load("./data/ModellingTaxaLookup.rda")

ModellingTaxaLookup <- ModellingTaxaLookup |>
  dplyr::mutate(
    "model" = dplyr::case_when(
      taxon_code %in% c("agrostis_capillaris", "anthoxanthum_odoratum", "avenella_flexuosa",
                        "calluna_vulgaris", "dactylis_glomerata", "festuca_rubra",
                        "holcus_lanatus", "plantago_lanceolata", "ranunculus_repens",
                        "rumex_acetosa", "urtica_dioica") ~ TRUE,
      TRUE ~ model
    )
  )

usethis::use_data(ModelledTaxaCodes, overwrite = TRUE, internal = FALSE, compress = "xz")

ModelledTaxaCodes <- ModellingTaxaLookup |>
  dplyr::mutate(
    "model" = dplyr::case_when(
      taxon_code %in% c("agrostis_capillaris", "anthoxanthum_odoratum", "avenella_flexuosa",
                        "calluna_vulgaris", "dactylis_glomerata", "festuca_rubra",
                        "holcus_lanatus", "plantago_lanceolata", "ranunculus_repens",
                        "rumex_acetosa", "urtica_dioica") ~ TRUE,
      TRUE ~ model
    )
  ) |>
  dplyr::filter(model == TRUE) |>
  dplyr::distinct(taxon_code) |>
  dplyr::pull(taxon_code) |>
  sort()

usethis::use_data(ModelledTaxaCodes, overwrite = TRUE, internal = FALSE, compress = "xz")

VariableLookup <- tibble::tribble(
  ~raw_name, ~variable_code, ~variable_name, ~variable_plot_name, ~model_var,
  "EIVEres.M", "M", "Soil.Moisture", "Soil Moisture", TRUE,
  "EIVEres.M.nw3", "M.nw", "Soil.Moisture.Niche.Width", "Soil Moisture Niche Width", FALSE,
  "EIVEres.N", "N", "Soil.Nitrogen", "Soil Nitrogen", TRUE,
  "EIVEres.N.nw3", "N.nw", "Soil.Nitrogen.Niche.Width", "Soil Nitrogen Niche Width", FALSE,
  "EIVEres.R", "R", "Reaction", "Reaction", TRUE,
  "EIVEres.R.nw3", "R.nw", "Reaction.Niche.Width", "Reaction Niche Width", FALSE,
  "EIVEres.L", "L", "Light", "Light", TRUE,
  "EIVEres.L.nw3", "L.nw", "Light.Niche.Width", "Light Niche Width", FALSE,
  "EIVEres.T", "T", "Temperature", "Temperature", FALSE,
  "EIVEres.T.nw3", "T.nw", "Temperature.Niche.Width", "Temperature Niche Width", FALSE,
  "Salinity", "S", "Salinity", "Salinity", TRUE,
  "Disturbance.Severity", "DS", "Disturbance.Severity", "Disturbance Severity", FALSE,
  "Disturbance.Severity.herblayer", "DSh", "Disturbance.Severity.Herb.Layer", "Herb Layer Disturbance Severity", FALSE,
  "Disturbance.Frequency", "DF", "Disturbance.Frequency", "Disturbance Frequency", FALSE,
  "Disturbance.Frequency.herblayer", "DFh", "Disturbance.Frequency.Herb.Layer", "Herb Layer Disturbance Frequency", FALSE,
  "SD_Disturbance.Severity", "DS.sd", "Disturbance.Severity.SD", "Disturbance Severity SD", FALSE,
  "SD_Disturbance.Severity.herblayer", "DSH.sd", "Disturbance.Severity.Herb.Layer.SD", "Herb Layer Disturbance Severity SD", FALSE,
  "SD_Disturbance.Frequency", "DF.sd", "Disturbance.Frequency.SD", "Disturbance Frequency SD", FALSE,
  "SD_Disturbance.Frequency.herblayer", "DFH.sd", "Disturbance.Frequency.Herb.Layer.SD", "Disturbance Frequency SD", FALSE,
  "Mowing.Frequency", "MF", "Mowing.Frequency", "Mowing Frequency", FALSE,
  "Grazing.Pressure", "GP", "Grazing.Pressure", "Grazing Pressure", TRUE,
  "Soil.Disturbance", "SD", "Soil.Disturbance", "Soil Disturbance", TRUE,
  "SD_Mowing.Frequency", "MF.sd", "Mowing.Frequency.SD", "Mowing Frequency SD", FALSE,
  "SD_Grazing.Pressure", "GP.sd", "Grazing.Pressure.SD", "Grazing Pressure SD", FALSE,
  "SD_Soil.Disturbance", "SD.sd", "Soil.Disturbance.SD", "Soil Disturbance SD", FALSE,
  "tmax_sm", "tmax_sm", "Max.Summer.Temp", "Max Summer Temp", TRUE,
  "tmin_wt", "tmin_wt", "Min.Winter.Temp", "Min Winter Temp", TRUE,
  "prec_sm", "prec_sm", "Summer.Precipitation", "Summer Precipitation", TRUE,
  "prec_wt", "prec_wt", "Winter.Precipitation", "Winter Precipitation", TRUE
  ) |>
  as.data.frame()

usethis::use_data(VariableLookup, overwrite = TRUE, internal = FALSE, compress = "xz")

VariableNames <- sort(subset(VariableLookup, model_var == TRUE, select = "variable_code", drop = TRUE))

usethis::use_data(VariableNames, overwrite = TRUE, internal = FALSE, compress = "xz")

Gradients <- list(
  "tmax_sm" = seq(-5, 55, 0.5),
  "tmin_wt" = seq(-30, 15, 0.5),
  "prec_sm" = seq(0, 800, 20),
  "prec_wt" = seq(0, 1700, 20),
  "GP" = seq(0, 1, 0.01),    
  "L" = seq(0, 10, 0.1),    
  "M" = seq(0, 10, 0.1),     
  "N" = seq(0, 10, 0.1),     
  "R" = seq(0, 10, 0.1),     
  "S" = seq(0, 10, 0.1),     
  "SD" = seq(0, 1, 0.01)
)

usethis::use_data(Gradients, overwrite = TRUE, internal = FALSE, compress = "xz")
