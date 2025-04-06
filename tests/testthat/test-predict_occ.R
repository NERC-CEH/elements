testthat::test_that("predict_occ works", {
  
  elements::startup()
  
  test_taxon <- "stellaria_graminea"
  
  test_predictors <- data.frame(L = c(7.8, 7.3), 
                                M = c(2.9, 5.7),
                                N = c(3.4, 5.7), 
                                R = c(6.1, 6.5), 
                                S = c(0.2, 0.9), 
                                SD = c(0.1, 0.3), 
                                GP = c(0.3, 0.3), 
                                bio05 = c(26.2, 26.2), 
                                bio06 = c(16.1, 18.2), 
                                bio16 = c(363.6, 267.5),
                                bio17 = c(45.4, 4.1)
                                )
  
  test_predictors <- elements::ExampleData
  
  test_pa <- c("Present", "Absent")
  
  actual <- elements::predict_occ(taxon = test_taxon, predictors = test_predictors, pa = test_pa, dp = 3)
  
  elements::shutdown()
  
  testthat::expect_equal(colnames(actual), test_pa)
  testthat::expect_equal(nrow(actual), nrow(test_predictors))
  
})
