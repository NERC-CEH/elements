calc_hoa_curve_data <- function(taxon, variable){
  
  gradient <- as.data.frame(Gradients[variable])
  
  hoa_pred <- elements::predict_occ_taxon(taxon = taxon, predictors = gradient,
                                          pa = "Present", limit = NULL, holdopt = setdiff(elements::VariableNames, variable),
                                          dp = 2, append = "ids")
  hoa_pred[["variable"]] <- variable
  hoa_pred[["taxon_code"]] <- taxon
  hoa_pred[["x"]] <- gradient[[variable]]
  colnames(hoa_pred)[1] <- "y"
  
  return(hoa_pred)
  
}

combinations <- expand.grid(elements::TaxonomicBackbone$taxon_code, elements::VariableNames)

HOAData_list <- mapply(X = combinations[[1]], 
                       Y = combinations[[2]],
                       FUN = function(X, Y){calc_hoa_curve_data(taxon = as.character(X), variable = as.character(Y))},
                       SIMPLIFY = FALSE)

HOAData <- do.call(rbind, HOAData_list)

HOAData <- HOAData[, c(colnames(elements::PDPData))]

usethis::use_data(HOAData, overwrite = TRUE, internal = FALSE)
