testthat::test_that("env_filter works with svm method", {
  
  elements::startup()
  
  test_predictors <- elements::ExampleScenarios[1,]
  test_taxa <- elements::TaxonomicBackbone$taxon_code[sample(1:nrow(elements::TaxonomicBackbone), 200)]
  test_method <- "svm"
  
  tictoc::tic()
  actual <- elements::env_filter(predictors = test_predictors, taxa = test_taxa, method = test_method)
  tictoc::toc()
  
  elements::shutdown()
  
  testthat::expect_equal(colnames(actual), c("taxon_code", "Present", "rank"))
  
})

testthat::test_that("env_filter works with mean method", {
  
  test_predictors <- elements::ExampleScenarios[1,]
  test_taxa <- elements::TaxonomicBackbone$taxon_code[sample(1:nrow(elements::TaxonomicBackbone), 200)]
  test_method <- "mean"
  
  actual <- elements::env_filter(predictors = test_predictors, taxa = test_taxa, method = test_method)
  
  testthat::expect_equal(colnames(actual), c("taxon_code", "Distance", "rank"))
  
})

testthat::test_that("env_filter works with median method", {
  
  test_predictors <- elements::ExampleScenarios[1,]
  test_taxa <- elements::TaxonomicBackbone$taxon_code[sample(1:nrow(elements::TaxonomicBackbone), 200)]
  test_method <- "median"
  
  actual <- elements::env_filter(predictors = test_predictors, taxa = test_taxa, method = test_method)
  
  testthat::expect_equal(colnames(actual), c("taxon_code", "Distance", "rank"))
  
})

testthat::test_that("env_filter works with median method and limit set to min_max", {
  
  test_predictors <- elements::ExampleScenarios[1,]
  test_taxa <- elements::TaxonomicBackbone$taxon_code
  test_method <- "median"
  
  actual <- elements::env_filter(predictors = test_predictors, taxa = test_taxa, method = test_method, limit = "min_max")
  
  testthat::expect_equal(colnames(actual), c("taxon_code", "Distance", "rank"))
  
})
