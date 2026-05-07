load("./data/VariableNamesLookup.rda")

VariableNames <- subset(VariableNamesLookup, model_var == TRUE, select = "variable_code", drop = TRUE)

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
