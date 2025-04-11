testthat:::test_that("shutdown works", {
  
  elements::shutdown()
  
  testthat::expect_false(exists(x = "Models", envir = .GlobalEnv))
  
})
