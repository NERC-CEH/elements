testthat::test_that("predict_occ_taxon works", {
  
  elements::startup()
  
  test_taxon <- "stellaria_graminea"
  
  test_predictors <- elements::ExampleData1
  
  test_pa <- c("Present", "Absent")
  
  actual <- elements::predict_occ_taxon(taxon = test_taxon, predictors = test_predictors, pa = test_pa, dp = 3, append = TRUE)
  
  testthat::expect_equal(colnames(actual), c(colnames(test_predictors), test_pa))
  testthat::expect_equal(nrow(actual), nrow(test_predictors))
  
  elements::shutdown()
  
})
