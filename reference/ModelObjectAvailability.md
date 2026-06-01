# Model Object Availability

A data frame containing boolean (TRUE/FALSE) values indicating the
objects/information available for each modelled taxon.

## Usage

``` r
ModelObjectAvailability
```

## Format

A data frame with 8897 rows and 8 columns, the definitions of which are:

- taxon_code:

  The taxon, see
  [`elements::ModelledTaxaCodes`](https://NERC-CEH.github.io/elements/reference/ModelledTaxaCodes.md).

- imbalance:

  A boolean value indicating whether the taxon has data in
  [`elements::Imbalances`](https://NERC-CEH.github.io/elements/reference/Imbalances.md).

- nichewidth:

  A boolean value indicating whether the taxon has data in
  [`elements::NicheWidths`](https://NERC-CEH.github.io/elements/reference/NicheWidths.md).

- performance:

  A boolean value indicating whether the taxon has data in
  [`elements::PerformanceMeasures`](https://NERC-CEH.github.io/elements/reference/PerformanceMeasures.md).

- ale:

  A boolean value indicating whether the taxon has data in
  [`elements::ALEData`](https://NERC-CEH.github.io/elements/reference/ALEData.md).

- pdp:

  A boolean value indicating whether the taxon has data in
  [`elements::PDPData`](https://NERC-CEH.github.io/elements/reference/PDPData.md).

- hoa:

  A boolean value indicating whether the taxon has data in
  [`elements::HOAData`](https://NERC-CEH.github.io/elements/reference/HOAData.md).

- model:

  A boolean value indicating whether the taxon has a ecological niche
  model as present in ./inst/extdata/Models.

## Details

`ModelObjectAvailability`
