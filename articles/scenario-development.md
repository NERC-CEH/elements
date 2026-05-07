# Scenario Development

``` r

library(e1071)
library(elements)
library(filehash)
```

## Scenarios

`elements` is designed to be used to model scenarios of environmental
change considering multiple interacting drivers. The object
[`elements::ExampleScenarios`](https://NERC-CEH.github.io/elements/reference/ExampleScenarios.md)
provides a basic set of example scenarios: (A) Climate Change - RCP4.5,
(A) Climate Change - RCP8.5, (B) Grazing Intensification (+0.025GP per
year), (B) Grazing Reduction (-0.025GP per year), and (C) Nutrient
Enrichment (+0.25N per year) along with a Baseline scenario. Below the
predicted probabilities for the taxa in
[`elements::ExamplePlot`](https://NERC-CEH.github.io/elements/reference/ExamplePlot.md)
for the scenarios are displayed.

``` r

elements::startup()
#> elements startup completed.

scenario_results <- elements::predict_occ(taxa = elements::ExamplePlot$taxon_code,
                                          predictors = elements::ExampleScenarios,
                                          append = "ids") |>
  dplyr::left_join(elements::ModellingTaxaLookup |> dplyr::distinct(taxon_name, taxon_code), by = "taxon_code")
```

![](scenario-development_files/figure-html/scenario_example_plot-1.png)

## Environmental Filtering

In addition to modelling the response of individual taxa over time let’s
inspect how the constant taxa in EUNIS habitats respond to scenarios in
[`elements::ExampleScenarios`](https://NERC-CEH.github.io/elements/reference/ExampleScenarios.md),
by presenting the mean of the probabilities of each EUNIS habitats
constant taxa, for the top EUNIS habiats.

``` r

eunis_taxa_models <- intersect(unique(elements::EUNISConstantTaxa$taxon_code), 
                               elements::ModelledTaxaCodes)

predictors_scenanrios <- elements::ExampleScenarios |> 
  dplyr::distinct()

eunis_filter_results <- elements::env_filter(predictors = predictors_scenanrios, 
                                             taxa = eunis_taxa_models, 
                                             screen = TRUE, method = "svm", 
                                             limit = "min_max", 
                                             exclude = NULL, threshold = NULL, 
                                             append = "ids")
```

The mean probability for the constant taxa in the top EUNIS habitat in
the baseline (Q24 - Intermediate fen and soft-water spring mire)
decreases in all example scenarios.

![](scenario-development_files/figure-html/scenario_eunisQ_weighted_plot-1.png)

``` r

elements::shutdown()
```
