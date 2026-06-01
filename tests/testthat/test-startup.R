testthat:::test_that("startup works, models set to NULL by default", {

  elements::startup()
  
  model <- elementsEnv$Models[["stellaria_graminea"]]
  
  testthat::expect_true(all(class(model) == c("svm.formula", "svm")))
  testthat::expect_true(exists(x = "Models", envir = elementsEnv))
  
  elements::shutdown()
  
})

testthat:::test_that("startup works, models set to all", {
  
  elements::startup(models = "all")
  
  models_names <- names(elementsEnv$Models)
  
  setdiff(models_names, elements::ModelledTaxaCodes)
  
  testthat::expect_true(setequal(models_names, elements::ModelledTaxaCodes))
  
  elements::shutdown()
  
})

testthat:::test_that("startup works, models set to test", {
  
  elements::startup(models = "test")
  
  models_names <- names(elementsEnv$Models)
  
  testthat::expect_true(setequal(models_names, c(elements::ExamplePlots$taxon_code, c("stellaria_graminea", "silene_flos-cuculi_aggr"))))
  
  elements::shutdown()
  
})
