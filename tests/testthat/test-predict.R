testthat::test_that("predict works", {
  
  test_species <- "NBNSYS0000004288"
  
  test_predictors <- data.frame("F" = c(3.86, 1),
                                "N" = c(2.71, 1),
                                "R" = c(6.57, 1),
                                "S" = c(0.571, 0.571),
                                "DG" = c(0.271, 0.271),
                                "DS" = c(0.219, 0.219),
                                "L" = c(5, 5),
                                "MAP" = c(1200, 900),
                                "Tmax07" = c(20, 25),
                                "Tmin01" = c(-1, 1)
                                )
  
  test_pa <- c("Present", "Absent")
  
  actual <- elemental::predict(species = test_species, predictors = test_predictors, pa = test_pa)
  
})
