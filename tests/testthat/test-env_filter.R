testthat::test_that("env_filter works with svm method and screen = TRUE", {
  
  elements::startup()
  
  test_predictors <- elements::ExampleScenarios
  test_taxa <- elements::TaxonomicBackbone$taxon_code[sample(1:nrow(elements::TaxonomicBackbone), 20)]
  test_method <- "svm"
  
  tictoc::tic()
  actual <- elements::env_filter(predictors = test_predictors, taxa = test_taxa, method = test_method, screen = TRUE)
  tictoc::toc()
  
  elements::shutdown()
  
  testthat::expect_equal(colnames(actual), c("scenario", "timeslice", "scenario_code", "taxon_code", "Present"))
  
})

testthat::test_that("env_filter works with svm method and screen = FALSE", {
  
  elements::startup()
  
  test_predictors <- elements::ExampleScenarios
  test_taxa <- elements::TaxonomicBackbone$taxon_code[sample(1:nrow(elements::TaxonomicBackbone), 20)]
  test_method <- "svm"
  
  tictoc::tic()
  actual <- elements::env_filter(predictors = test_predictors, taxa = test_taxa, method = test_method, screen = FALSE)
  tictoc::toc()
  
  elements::shutdown()
  
  testthat::expect_equal(colnames(actual), c("scenario", "timeslice", "scenario_code", "taxon_code", "Present"))
  
})

testthat::test_that("env_filter works with mean method", {
  
  test_predictors <- elements::ExampleScenarios
  test_taxa <- elements::TaxonomicBackbone$taxon_code[sample(1:nrow(elements::TaxonomicBackbone), 20)]
  test_method <- "mean"
  
  actual <- elements::env_filter(predictors = test_predictors, taxa = test_taxa, method = test_method)
  
  testthat::expect_equal(colnames(actual), c("taxon_code", "scenario", "timeslice", "scenario_code", "distance"))
  
})

testthat::test_that("env_filter works with median method", {
  
  test_predictors <- elements::ExampleScenarios
  test_taxa <- elements::TaxonomicBackbone$taxon_code[sample(1:nrow(elements::TaxonomicBackbone), 20)]
  test_method <- "median"
  
  actual <- elements::env_filter(predictors = test_predictors, taxa = test_taxa, method = test_method)
  
  testthat::expect_equal(colnames(actual), c("taxon_code", "scenario", "timeslice", "scenario_code", "distance"))
  
})

testthat::test_that("env_filter works with median method screen set to TRUE and limit set to min_max", {
  
  test_predictors <- elements::ExampleScenarios
  test_taxa <-  elements::TaxonomicBackbone$taxon_code[sample(1:nrow(elements::TaxonomicBackbone), 20)]
  test_method <- "median"
  
  actual <- elements::env_filter(predictors = test_predictors, taxa = test_taxa, method = test_method, screen = TRUE, limit = "min_max")
  
  testthat::expect_equal(colnames(actual), c("taxon_code", "scenario", "timeslice", "scenario_code", "distance"))
  
})
