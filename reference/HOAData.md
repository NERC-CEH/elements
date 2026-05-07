# HOA data

A dataset containing the a set of predictions for each variable along
its gradient (see
[`elements::Gradients`](https://NERC-CEH.github.io/elements/reference/Gradients.md))
produced using the
[`elements::predict_occ`](https://NERC-CEH.github.io/elements/reference/predict_occ.md)
function with the 'holdopt' argument set to all other variables.

## Usage

``` r
HOAData
```

## Format

A data frame with 9306262 rows and 4 columns, the definitions of which
are:

- taxon_code:

  The taxon, see
  [`elements::ModelledTaxaCodes`](https://NERC-CEH.github.io/elements/reference/ModelledTaxaCodes.md).

- x:

  The variable value.

- y:

  The PDP value.

- variable:

  The variable name, see
  [`elements::VariableNames`](https://NERC-CEH.github.io/elements/reference/VariableNames.md).

## Details

`HOAData`
