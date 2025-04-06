testthat:::test_that("startup works", {

  elements::startup()
  
  model <- OccModels[["stellaria_graminea"]]
  
  testthat::expect_true(all(class(model) == c("svm.formula", "svm")))
  testthat::expect_true(exists(x = "OccModels", envir = .GlobalEnv))
  
  elements::shutdown()
  
})