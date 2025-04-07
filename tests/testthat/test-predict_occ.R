testthat::test_that("predict_occ works", {
  
  elements::startup()
  
  test_taxa <- c("stellaria_graminea", "silene_flos-cuculi")
  
  test_predictors_1 <- elements::ExampleData1
  test_predictors_2 <- elements::ExampleData2
  
  test_pa <- c("Present", "Absent")
  
  # Generate predictions using a data frame containing taxon_codes in the 'taxon' column.
  actual <- elements::predict_occ(taxa_codes = NULL, predictors = test_predictors_2, pa = test_pa, dp = 3, append = TRUE)
  
  testthat::expect_equal(colnames(actual), c(colnames(test_predictors_2), test_pa))
  testthat::expect_equal(nrow(actual), nrow(test_predictors_2))
  
  # Generate predictions for taxa specified in the 'taxa_codes' argument using a data frame containing only predictor variables.
  actual <- elements::predict_occ(taxa_codes = test_taxa, predictors = test_predictors_1, pa = test_pa, dp = 3, append = TRUE)
  
  testthat::expect_equal(colnames(actual), c(colnames(test_predictors_1), "taxon_code", test_pa))
  testthat::expect_equal(nrow(actual), nrow(test_predictors_1) * 2)
  
  # Generate predictions for taxa specified in the 'taxa_codes' argument using a data frame containing both predictor variables and a 'taxon_code' column (which is ignored and overwritten).
  actual <- elements::predict_occ(taxa_codes = test_taxa, predictors = test_predictors_2, pa = test_pa, dp = 3, append = TRUE)
  
  testthat::expect_equal(colnames(actual), c(colnames(test_predictors_2), test_pa))
  testthat::expect_equal(nrow(actual), nrow(test_predictors_2) * 2)
  
  
  elements::shutdown()
  
})