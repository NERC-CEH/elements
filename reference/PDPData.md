# PDP data

A dataset containing the Partial Dependency Profile (PDP) (Molnar, 2018)
data for the models, generated using 1000 samples from the training
data.

## Usage

``` r
PDPData
```

## Format

A data frame with 1949640 rows and 4 columns, the definitions of which
are:

- taxon_code:

  The taxon, see
  [`elements::ModelledTaxaCodes`](https://NERC-CEH.github.io/elements/reference/ModelledTaxaCodes.md).

- x:

  The variable value.

- y:

  The PDP value.

- variable:

  The variable name.

## Details

`PDPData`
