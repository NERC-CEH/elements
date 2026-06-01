# Predictor data for three example scenarios

A dataset containing predictor data for four sets of example scenarios:
(A) Climate Change: a.i - ssp126, a.ii - ssp245, a.iii - ssp370, a.iv -
ssp585. (B) Grazing: b.i - Grazing intensification, b.i - Grazing
reduction (C) Nutrient: c.i - Nutrient Enrichment, c.ii - Nutrient
Reduction (D) Interactions: d.i - Climate Change + Nutrient Reduction +
Grazing Reduction, d.ii - Climate Change + Nutrient Addition + Grazing
Reduction, d.iii - Climate Change + Nutrient Reduction + Grazing
Intensification, d.iv - Climate Change + Nutrient Addition + Grazing
Intensification

## Usage

``` r
ExampleScenarios
```

## Format

A data frame with 48 rows and 16 columns, the definitions of which are:

- L:

  Light

- M:

  Soil Moisture

- N:

  Soil Nitrogen

- R:

  Reaction

- S:

  Salinity

- SD:

  Soil Disturbance

- GP:

  Grazing Pressure

- tmax_sm:

  Maximum temperature in the warmest month

- tmin_wt:

  Minimum temperature in the coldest month

- prec_wt:

  Precipitation in the wettest quarter

- prec_sm:

  Precipitation in the driest quarter

- scenario_code:

  The scenario code.

- scenario_stage:

  The scenario stage, either 1) baseline, or 2) projection.

- climate_scenario:

  The SSP climate scenario.

- timeslice:

  The scenario timeslice, either a year or period.

- scenario_name:

  The scenario name.

## Details

`ExampleScenarios`
