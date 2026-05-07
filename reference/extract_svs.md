# Extract the support vectors from an SVM model

Extract the support vectors from the SVM model for a taxon and descale
them.

## Usage

``` r
extract_svs(taxon)
```

## Arguments

- taxon:

  A string containing the taxon code for a taxon, see
  [`elements::ModelledTaxaCodes`](https://NERC-CEH.github.io/elements/reference/ModelledTaxaCodes.md).

## Value

A data frame containing 11 columns, containing the support vector points
for each variable in `length(elements::VariableNames)`

## Examples

``` r
if (FALSE) { # \dontrun{
elements::startup(); elements::extract_svs(taxon = "carex_nigra")
} # }
```
