testthat::test_that("get_parent_taxa works", {
  
  expected <- data.frame("TaxonName" = "Populus nigra subsp. betulifolia",
                         "Subspecies" = "Populus nigra subsp. betulifolia",
                         "Species" = "Populus nigra",
                         "Genus" = "Populus",
                         "Family" = "Salicaceae",
                         "Order" = "Malpighiales",
                         "Superorder" = "Rosanae",
                         "Class" = "Magnoliopsida",
                         "Subdivision" = "Spermatophytina",
                         "Phylum" = "Tracheophyta",
                         "Root" = "Plantae")
  
  actual <- elements::get_parent_taxa(taxon = "Populus nigra subsp. betulifolia")
  
  testthat::expect_equal(expected, actual)
  
})
