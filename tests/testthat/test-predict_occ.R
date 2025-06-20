testthat::test_that("predict_occ works", {
  
  elements::startup()
  
  test_taxa <- c("stellaria_graminea", "silene_flos-cuculi")
  
  test_predictors_1 <- elements::ExampleData1
  test_predictors_2 <- elements::ExampleData2
  
  test_pa <- c("Present", "Absent")
  
  # Generate predictions using a data frame containing taxon_codes in the 'taxon' column.
  actual <- elements::predict_occ(taxa_codes = NULL, predictors = test_predictors_2, pa = test_pa, limit = NULL, dp = 3, append = TRUE)
  
  testthat::expect_equal(colnames(actual), c(colnames(test_predictors_2), test_pa))
  testthat::expect_equal(nrow(actual), nrow(test_predictors_2))
  
  # Generate predictions for taxa specified in the 'taxa_codes' argument using a data frame containing only predictor variables.
  actual <- elements::predict_occ(taxa_codes = test_taxa, predictors = test_predictors_1, pa = test_pa, limit = NULL, dp = 3, append = TRUE)
  
  testthat::expect_equal(colnames(actual), c(colnames(test_predictors_1), test_pa, "taxon_code"))
  testthat::expect_equal(nrow(actual), nrow(test_predictors_1) * 2)
  
  # Generate predictions for taxa specified in the 'taxa_codes' argument using a data frame containing both predictor variables and a 'taxon_code' column (which is ignored and overwritten).
  actual <- elements::predict_occ(taxa_codes = test_taxa, predictors = test_predictors_2, pa = test_pa, limit = NULL, dp = 3, append = TRUE)
  
  testthat::expect_equal(colnames(actual), c(colnames(test_predictors_2), test_pa))
  testthat::expect_equal(nrow(actual), nrow(test_predictors_2) * 2)
  
  
  elements::shutdown()
  
})

testthat::test_that("predict_occ works, holding GP and SD at optima", {
  
  elements::startup()
  
  test_taxa <- c("stellaria_graminea", "silene_flos-cuculi")
  
  test_predictors_1 <- elements::ExampleData1
  test_predictors_2 <- elements::ExampleData2
  
  test_pa <- c("Present", "Absent")
  
  # Generate predictions for taxa specified in the 'taxa_codes' argument using a data frame containing only predictor variables.
  actual <- elements::predict_occ(taxa_codes = test_taxa, predictors = test_predictors_1, 
                                  pa = test_pa, limit = NULL, holdopt = c("GP", "SD"), dp = 3, append = TRUE)
  
  testthat::expect_equal(unique(actual[actual[["taxon_code"]] == "stellaria_graminea", ][["GP"]]), 
                         subset(elements::NicheWidths, 
                                variable == "GP" & taxon_code == "stellaria_graminea",
                                select = c("mean"), drop = TRUE))
  
  testthat::expect_equal(unique(actual[actual[["taxon_code"]] == "stellaria_graminea", ][["SD"]]), 
                         subset(elements::NicheWidths, 
                                variable == "SD" & taxon_code == "stellaria_graminea",
                                select = c("mean"), drop = TRUE))
  
  testthat::expect_equal(unique(actual[actual[["taxon_code"]] == "silene_flos-cuculi", ][["GP"]]), 
                         subset(elements::NicheWidths, 
                                variable == "GP" & taxon_code == "silene_flos-cuculi",
                                select = c("mean"), drop = TRUE))
  
  testthat::expect_equal(unique(actual[actual[["taxon_code"]] == "silene_flos-cuculi", ][["SD"]]), 
                         subset(elements::NicheWidths, 
                                variable == "SD" & taxon_code == "silene_flos-cuculi",
                                select = c("mean"), drop = TRUE))
  
  
  elements::shutdown()
  
})