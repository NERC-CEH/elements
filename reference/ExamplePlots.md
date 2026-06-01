# A set of example vegetation plots

A dataset containing the taxon presences and percentage cover for a set
of vegetation plots recorded in a spring-fed calcareous fen - Redcar
Field, County Durham, United Kingdom. These plots are not currently
included in the EVA and were not included in the model training data,
therefore representing an independent sample. These plots are used to
form the example scenarios present in
[`elements::ExampleScenarios`](https://NERC-CEH.github.io/elements/reference/ExampleScenarios.md).

## Usage

``` r
ExamplePlots
```

## Format

A data frame with 93 rows and 4 columns, the definitions of which are:

- plot_id:

  The plot id.

- taxon:

  The scientific names of the taxa present in the example plot.

- taxon_code:

  The taxon, see
  [`elements::ModelledTaxaCodes`](https://NERC-CEH.github.io/elements/reference/ModelledTaxaCodes.md).

- cover_perc:

  The percentage cover of the taxa present in example plot.

## Details

`ExamplePlots`
