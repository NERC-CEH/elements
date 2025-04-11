testthat:::test_that("startup works", {

  elements::startup()
  
  model <- Models[["stellaria_graminea"]]
  
  testthat::expect_true(all(class(model) == c("svm.formula", "svm")))
  testthat::expect_true(exists(x = "Models", envir = .GlobalEnv))
  
  elements::shutdown()
  
})
