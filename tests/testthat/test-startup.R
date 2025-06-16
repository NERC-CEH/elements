testthat:::test_that("startup works, models set to NULL by default", {

  elements::startup()
  
  model <- Models[["stellaria_graminea"]]
  
  testthat::expect_true(all(class(model) == c("svm.formula", "svm")))
  testthat::expect_true(exists(x = "Models", envir = .GlobalEnv))
  
  elements::shutdown()
  
})

testthat:::test_that("startup works, models set to all", {
  
  elements::startup(models = "all")
  
  models_names <- names(Models)
  
  testthat::expect_equal(sort(models_names), sort(elements::TaxonomicBackbone$taxon_code))
  
  elements::shutdown()
  
})

testthat:::test_that("startup works, models set to test", {
  
  elements::startup(models = "test")
  
  models_names <- names(Models)
  
  testthat::expect_equal(sort(models_names), sort(c("silene_flos-cuculi", "stellaria_graminea")))
  
  elements::shutdown()
  
})
