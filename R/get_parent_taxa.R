#' Retrieve the parent taxa for a given taxon.
#'
#' @param taxon The name of a Taxon in the "TaxonName" column of the `elements::EuroSL` data frame, or the "taxon_name" column of the `elements::ModelTaxa` data frame.
#'
#' @returns A data frame in wide format containing the parent taxa for the specified taxon.
#' @export
#'
#' @examples
#' elements::get_parent_taxa(taxon = "Populus nigra subsp. betulifolia")
get_parent_taxa <- function(taxon){
  
  taxon_list <- list()
  
  taxon_list["TaxonName"] <- taxon
  
  taxon_rank <- subset(elements::EuroSL, TaxonName == taxon, select = TaxonRank, drop = TRUE)
  
  taxon_list[taxon_rank] <- taxon
  
  while(!is.na(taxon)) {
    
    parent_taxon_name <- subset(elements::EuroSL, TaxonName == taxon, select = IsChildTaxonOf, drop = TRUE)
    parent_taxon_rank <- subset(elements::EuroSL, TaxonName == parent_taxon_name, select = TaxonRank, drop = TRUE)
    
    taxon_list[parent_taxon_rank] <- parent_taxon_name
    
    taxon <- parent_taxon_name
    
  }
  
  taxon_df <- as.data.frame(t(do.call(rbind, taxon_list)))
  
  return(taxon_df)
  
}