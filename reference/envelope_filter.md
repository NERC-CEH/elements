# Apply an envelope model for a set of predictors for multiple taxa

Append a column to set of predictors which indicates whether the
predictors in each row are within a set of distributional limits for a
particular taxon and set of variables.

## Usage

``` r
envelope_filter(
  taxa,
  predictors,
  vars = elements::VariableNames,
  limit = "min_max"
)
```

## Arguments

- taxa:

  A vector of strings containing one or more taxon codes. See
  [`elements::ModelledTaxaCodes`](https://NERC-CEH.github.io/elements/reference/ModelledTaxaCodes.md).
  Optional

- predictors:

  A data frame of predictors. Must include one or more of the following
  columns: L, M, N, R, S, SD, GP, tmax_sm, tmin_wt, prec_wt, and prec_sm

- vars:

  A vector of strings, containing one or more variables as present in
  [`elements::VariableNames`](https://NERC-CEH.github.io/elements/reference/VariableNames.md),
  which must also be present in the predictors data frame.

- limit:

  A string representing the niche width quantiles, one of "min_max",
  "q01_q99", "q05_q95", "q10_q90", "q25_q75".

## Value

The predictors data frame containing an additional column 'within_limit'
indicating whether each row of predictord is wthin the specified limits.

## Details

This function acts as an envelope, allowing the screening of large
quantities of predictor data for the suitability of multiple taxa before
applying the more computationally expensive SVM models in
[`elements::predict_occ`](https://NERC-CEH.github.io/elements/reference/predict_occ.md)
and
[`elements::predict_occ_taxon`](https://NERC-CEH.github.io/elements/reference/predict_occ_taxon.md).

## Examples

``` r
if (FALSE) { # \dontrun{
elements::envelope_filter_taxon(taxa = NULL, predictors = elements::ExampleData2)
} # }
```
