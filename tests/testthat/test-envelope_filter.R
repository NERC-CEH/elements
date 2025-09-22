testthat::test_that("envelope_filter works", {
  
  test_taxa_codes <- c("stellaria_graminea", "silene_flos-cuculi")
  test_predictors <- elements::ExampleData1
  test_vars <- elements::VariableNames
  test_limit <- "q01_q99"
  
  actual <- elements::envelope_filter(taxa = test_taxa_codes, predictors = test_predictors, vars = test_vars, limit = test_limit)
  
  expected_colnames <- c("L", "M", "N", "R", "S", "SD", "GP", "bio05", "bio06", "bio16", "bio17", "within_limits", "taxon_code")
  expected_within_limits_values <- c(TRUE, FALSE)
  
  testthat::expect_equal(colnames(actual), expected_colnames)
  testthat::expect_true(setequal(unique(actual$within_limits), expected_within_limits_values))
  
})


testthat::test_that("envelope_filter works, with taxa_codes NULL", {
  
  test_taxa_codes <- NULL
  test_predictors <- elements::ExampleData2
  test_vars <- elements::VariableNames
  test_limit <- "q01_q99"
  
  actual <- elements::envelope_filter(taxa = test_taxa_codes, predictors = test_predictors, vars = test_vars, limit = test_limit)
  
  expected_colnames <- c("L", "M", "N", "R", "S", "SD", "GP", "bio05", "bio06", "bio16", "bio17", "taxon_code", "within_limits")
  expected_within_limits_values <- c(TRUE, FALSE)
  
  testthat::expect_equal(colnames(actual), expected_colnames)
  testthat::expect_true(setequal(unique(actual$within_limits), expected_within_limits_values))
  
})
