VariableNames <- tibble::tribble(
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
  "Salinity", "S", "Salinity", "Salinty", TRUE,
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
  "bio05", "bio05", "Maximum.Temp.Warmest.Month", "Max Temp Warm Month", TRUE,
  "bio06", "bio06", "Minimum.Temp.Coldest.Month", "Min Temp Cold Month", TRUE,
  "bio16", "bio16", "Precipitation.Wettest.Quarter", "Rainfall Wet Quarter", TRUE,
  "bio17", "bio17", "Precipitation.Driest.Quarter", "Rainfall Dry Quarter", TRUE
)

rawname_to_code_lookup <- variable_names |>
  dplyr::select(variable_code, raw_name) |>
  tibble::deframe()

code_to_plotname_lookup <- variable_names |>
  dplyr::select(variable_code, variable_plot_name) |>
  tibble::deframe()

plotname_to_code_lookup <- variable_names |>
  dplyr::select(variable_plot_name, variable_code) |>
  tibble::deframe()

usethis::use_data(VariableNames, overwrite = TRUE)
