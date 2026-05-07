# Retrieve the most suitable taxa for a given set of environmental variable values

Retrieve the most suitable taxa for a given set of environmental
variable values supplied in the 'predictors' argument. To sets of
methods are available:

1.  "svm" which generates predictions using
    [`elements::predict_occ`](https://NERC-CEH.github.io/elements/reference/predict_occ.md)
    and uses the resultant probability values;

2.  "mean" and "median" which calculates the scaled euclidean distance
    between the values supplied in the 'predictors' argument and the
    mean or median niche positions as present in
    [`elements::NicheWidths`](https://NERC-CEH.github.io/elements/reference/NicheWidths.md).

## Usage

``` r
env_filter(
  predictors,
  taxa = elements::ModelledTaxaCodes,
  screen = TRUE,
  method = "svm",
  limit = "min_max",
  exclude = NULL,
  threshold = NULL,
  append = "ids"
)
```

## Arguments

- predictors:

  A data frame of predictors. Must include atleast one the following
  columns: L, M, N, R, S, SD, GP, tmax_sm, tmin_wt, prec_wt, prec_sm.
  Columns not included must then be included in the 'exclude' argument.

- taxa:

  A vector of strings containing one or more taxa to generate
  predictions for.

- screen:

  A boolean (TRUE/FALSE) indicating whether to use the
  [`elements::envelope_filter`](https://NERC-CEH.github.io/elements/reference/envelope_filter.md)
  function to check whether taxa are within distibutional limits prior
  to applying the more computationally expensive
  [`elements::predict_occ`](https://NERC-CEH.github.io/elements/reference/predict_occ.md)
  or
  [`elements::calc_distance`](https://NERC-CEH.github.io/elements/reference/calc_distance.md)
  functions.

- method:

  One of "svm", "mean", or "median".

- limit:

  A string representing the niche width quantiles, one of "min_max",
  "q01_q99", "q05_q95", "q25_q75". Which if set assigns a probability of
  0 to a set of predictors if one or more of those predictors are
  outside the stipulated quantile ranges. Only applied if pa =
  "Present". Optional.

- exclude:

  Model variables to exclude from the distance calculation; passed to
  the 'holdout' argument of 'elements::predict_occ' if the 'method'
  argument is "svm", otherwise when the 'method' argument is set to
  "mean" or "median" those variables are removed from the distance
  calculation.

- threshold:

  A probability threshold to use as a cut off in the environmental
  filter. Only applicable when 'method' = "svm".

- append:

  A string, one of "all", "predictors", or "ids" representing which
  columns from the predictors data frame to return with the results.

## Value

A dataframe containing three columns: taxon_code, rank, and Present (if
'method' = "svm") or Distance (if 'method' = "mean" or "median").

## Details

The svm method will produce more accurate results as it considers the
position of the environmental variable values in the 11-dimensional
hypervolume; however, if there are a large number of taxa-predictor
combinations the mean and median methods offer a faster alternative.

NOTE: The "mean" and "median" methods do not produce realistic results
and so are currently included for demonstrative purposes only.

## Examples

``` r
elements::startup(); elements::env_filter(predictors = elements::ExampleScenarios, taxa = elements::ModelledTaxaCodes[1:100], method = "svm", threshold = 0.5)
#> elements startup completed.
#>   scenario_code scenario_stage climate_scenario timeslice
#> 1           b.i     projection             <NA>      2008
#> 2           b.i     projection             <NA>      2009
#>             scenario_name        taxon_code Present
#> 1 Grazing Intensification achillea_ptarmica   0.524
#> 2 Grazing Intensification achillea_ptarmica   0.552
```
