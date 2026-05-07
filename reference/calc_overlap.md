# Calculate the niche overlap between a set of taxa

Calculate the niche overlap between all combinations of taxa as present
in the 'taxa' argument, or the combinations of taxa present in the
'taxa' and 'taxa_comp' arguments. Two methods are curently provided:
"D" - Schoener's D (Schoener, 1968) "I" - Warren's I (Warren et al.,
2008)

## Usage

``` r
calc_overlap(
  taxa,
  taxa_comp = NULL,
  data = elements::HOAData,
  vars = elements::VariableNames,
  method = "D",
  average = FALSE,
  format = "wide"
)
```

## Arguments

- taxa:

  A vector of strings containing taxon codes, see
  [`elements::ModelledTaxaCodes`](https://NERC-CEH.github.io/elements/reference/ModelledTaxaCodes.md).

- taxa_comp:

  A vector of string containing taxon codes, see
  [`elements::ModelledTaxaCodes`](https://NERC-CEH.github.io/elements/reference/ModelledTaxaCodes.md).

- data:

  A data frame containing the univariate responses of the taxa supplied
  in the 'taxa' and 'taxa_comp' arguments for the variables supplied in
  the 'vars' argument.
  [`elements::HOAData`](https://NERC-CEH.github.io/elements/reference/HOAData.md)
  by default.

- vars:

  A vector of strings containing the variables for which to calculate
  the overlap, one or more of
  [`elements::VariableNames`](https://NERC-CEH.github.io/elements/reference/VariableNames.md).

- method:

  A string, one of "D" or "I" indicating the overlap method (see
  description).

- average:

  A boolean (TRUE/FALSE) indicating whether to calculate the mean
  overlap across all variables.

- format:

  A boolean (TRUE/FALSE) indicating whether to return the results in
  wide of long format.

## Value

A data frame containing the overlap values.

## References

Schoener, T.W., 1968. The Anolis Lizards of Bimini: Resource
Partitioning in a Complex Fauna. Ecology 49, 704–726.
https://doi.org/10.2307/1935534 Warren, D.L., Glor, R.E., Turelli, M.,
2008. ENVIRONMENTAL NICHE EQUIVALENCY VERSUS CONSERVATISM: QUANTITATIVE
APPROACHES TO NICHE EVOLUTION. Evolution 62, 2868–2883.
https://doi.org/10.1111/j.1558-5646.2008.00482.x

## Examples

``` r
elements::calc_overlap(taxa = c("carex_arenaria", "carex_divulsa", "carex_hirta", "carex_sylvatica"))
#>     taxon_code_1    taxon_code_2         M         N         R         L
#> 1 carex_arenaria   carex_divulsa 1.0000000 1.0000000 1.0000000 1.0000000
#> 2 carex_arenaria     carex_hirta 0.7166717 0.7222517 0.6161794 0.7590258
#> 3 carex_arenaria carex_sylvatica 1.0000000 1.0000000 1.0000000 1.0000000
#> 4  carex_divulsa     carex_hirta 1.0000000 1.0000000 1.0000000 1.0000000
#> 5  carex_divulsa carex_sylvatica 1.0000000 1.0000000 1.0000000 1.0000000
#> 6    carex_hirta carex_sylvatica 1.0000000 1.0000000 1.0000000 1.0000000
#>           S        GP        SD   tmax_sm   tmin_wt   prec_sm   prec_wt
#> 1 1.0000000 1.0000000 1.0000000 1.0000000 1.0000000 1.0000000 1.0000000
#> 2 0.6477787 0.8676262 0.7001941 0.5306157 0.7514213 0.5589898 0.6319008
#> 3 1.0000000 1.0000000 1.0000000 1.0000000 1.0000000 1.0000000 1.0000000
#> 4 1.0000000 1.0000000 1.0000000 1.0000000 1.0000000 1.0000000 1.0000000
#> 5 1.0000000 1.0000000 1.0000000 1.0000000 1.0000000 1.0000000 1.0000000
#> 6 1.0000000 1.0000000 1.0000000 1.0000000 1.0000000 1.0000000 1.0000000
```
