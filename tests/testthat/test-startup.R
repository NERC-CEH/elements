testthat:::test_that("startup works", {

  elements::startup()
  
  model <- OccModels[["gymnocarpium_robertianum"]]
  
  testthat::expect_true(all(class(model) == c("svm.formula", "svm")))
  testthat::expect_true(exists(x = "OccModels", envir = .GlobalEnv))
  
})