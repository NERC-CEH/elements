# Taxonomic backbone

The higher taxa associated with the modelled taxa, retrieved from
EuroSL.

## Usage

``` r
TaxonomicBackbone
```

## Format

A data frame with 18652 rows and 9 columns, the definitions of which
are:

- taxon_code:

  The taxon, see
  [`elements::ModelledTaxaCodes`](https://NERC-CEH.github.io/elements/reference/ModelledTaxaCodes.md).

- taxon_code_no_suffix:

  The taxon code with no 'aggr' suffix.

- Root:

  The Root taxon.

- Phylum:

  The parent Phylum taxon associated with the Species.

- Subdivision:

  The parent Subdivision taxon associated with the Species.

- Class:

  The parent Class taxon associated with the Species.

- Superorder:

  The parent Superorder taxon associated with the Species.

- Family:

  The parent Family taxon associated with the Species.

- Genus:

  The parent Genus taxon associated with the Species.

## Details

`TaxonomicBackbone`
