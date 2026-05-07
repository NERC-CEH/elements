testthat::test_that("envelope_filter_taxon works", {
  
  test_taxon <- "carex_flacca_aggr"
  test_predictors <- elements::ExampleData1
  test_vars <- elements::VariableNames
  test_limit <- "q01_q99"
  
  actual <- elements::envelope_filter_taxon(taxon = test_taxon, predictors = test_predictors, vars = test_vars, limit = test_limit)
  
  expected_colnames <- c("L", "M", "N", "R", "S", "SD", "GP", "tmax_sm", "tmin_wt", "prec_wt", "prec_sm", "within_limits")
  expected_within_limits_values <- c(TRUE, FALSE)
  
  testthat::expect_true(setequal(colnames(actual), expected_colnames))
  testthat::expect_true(setequal(unique(actual$within_limits), expected_within_limits_values))
  
})
