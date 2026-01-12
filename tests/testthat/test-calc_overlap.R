testthat::test_that("calc_overlap works", {
  
  # test_taxa <- c("carex_arenaria", "carex_divulsa", "carex_hirta", "carex_sylvatica")
  test_taxa <- subset(elements::EUNISConstantTaxa, eunis_code == "Q24", select = taxon_code, drop = TRUE)
  test_taxa_comp <- c("luzula_pallescens")
  
  actual_taxa_D <- elements::calc_overlap(taxa = test_taxa, 
                                          taxa_comp = NULL,
                                          method = "D")
  
  actual_taxa_I <- elements::calc_overlap(taxa = test_taxa, 
                                          taxa_comp = NULL,
                                          method = "I")
  
  actual_taxa_comp_D <- elements::calc_overlap(taxa = test_taxa, 
                                               taxa_comp = test_taxa_comp,
                                               method = "D",
                                               average = TRUE)
  
  actual_taxa_comp_I <- elements::calc_overlap(taxa = test_taxa, 
                                               taxa_comp = test_taxa_comp,
                                               method = "I",
                                               average = TRUE)
  
  testthat::expect_equal(colnames(actual_taxa_D), c("taxon_code_1", "taxon_code_2", elements::VariableNames))
  testthat::expect_equal(colnames(actual_taxa_I), c("taxon_code_1", "taxon_code_2", elements::VariableNames))
  testthat::expect_equal(colnames(actual_taxa_comp_D), c("taxon_code_1", "taxon_code_2", "overlap"))
  testthat::expect_equal(colnames(actual_taxa_comp_I), c("taxon_code_1", "taxon_code_2", "overlap"))
  
  testthat::expect_equal(nrow(actual_taxa_D), nrow(t(combn(test_taxa, m = 2))))
  testthat::expect_equal(nrow(actual_taxa_I), nrow(t(combn(test_taxa, m = 2))))
  testthat::expect_equal(nrow(actual_taxa_comp_D), length(test_taxa) * length(test_taxa_comp))
  testthat::expect_equal(nrow(actual_taxa_comp_I), length(test_taxa) * length(test_taxa_comp))
  
})
