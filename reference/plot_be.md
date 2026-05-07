# Plot the bivariate effects for a taxon

Generate a plot containing the bivariate probability distribution of a
taxon for two variables generated using the Hold-At-Optima (HOA) method
present in
[`elements::predict_occ`](https://NERC-CEH.github.io/elements/reference/predict_occ.md).

## Usage

``` r
plot_be(taxon, vars)
```

## Arguments

- taxon:

  A string containing a taxon name as present in
  [`elements::ModelledTaxaCodes`](https://NERC-CEH.github.io/elements/reference/ModelledTaxaCodes.md).

- vars:

  A vector of strings containing two variable names as present in
  [`elements::VariableNames`](https://NERC-CEH.github.io/elements/reference/VariableNames.md)

## Value

A plot containing the bivariate probability distribution of a taxon for
two variables.

## Examples

``` r
elements::startup(); elements::plot_be(taxon = "carex_rostrata", vars = c("tmax_sm", "tmin_wt"))
#> elements startup completed.
```
