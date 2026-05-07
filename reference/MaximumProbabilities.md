# Maximum Probabilities

A data frame containing the maximum predicted probability values for
each taxon using the training data as predictors. As SVM models were
used there is limited embodied rarity and so these values are usally
close to 1.

## Usage

``` r
MaximumProbabilities
```

## Format

A data frame with 8897 rows and 2 columns, the definitions of which are:

- taxon_code:

  The taxon, see
  [`elements::ModelledTaxaCodes`](https://NERC-CEH.github.io/elements/reference/ModelledTaxaCodes.md).

- Present:

  The maxmimum probability of presence.

## Details

`MaximumProbabilities`
