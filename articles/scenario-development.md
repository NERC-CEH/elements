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
provides a basic set of example scenarios for the RF1 plot in
[`elements::ExamplePlots`](https://NERC-CEH.github.io/elements/reference/ExamplePlots.md):
(A) Climate Change: a.i - ssp126, a.ii - ssp245, a.iii - ssp370, a.iv -
ssp585. (B) Grazing: b.i - Grazing intensification, b.i - Grazing
reduction (C) Nutrient: c.i - Nutrient Enrichment, c.ii - Nutrient
Reduction (D) Interactions: d.i - Climate Change + Nutrient Reduction +
Grazing Reduction, d.ii - Climate Change + Nutrient Addition + Grazing
Reduction, d.iii - Climate Change + Nutrient Reduction + Grazing
Intensification, d.iv - Climate Change + Nutrient Addition + Grazing
Intensification Below the predicted probabilities for the taxa in plot
RF1 in
[`elements::ExamplePlots`](https://NERC-CEH.github.io/elements/reference/ExamplePlots.md)
for all scenarios are displayed.

![](scenario-development_files/figure-html/scenario_example_plot-1.png)

## Environmental Filtering

In addition to modelling the response of individual taxa over time let’s
inspect how the constant taxa in EUNIS habitats respond to scenarios in
[`elements::ExampleScenarios`](https://NERC-CEH.github.io/elements/reference/ExampleScenarios.md),
by presenting the mean of the probabilities of each EUNIS habitats
constant taxa, for the top EUNIS habiats.

The mean probability for the constant taxa in the top EUNIS habitat in
the baseline (Q24 - Intermediate fen and soft-water spring mire)
decreases in all example scenarios.

![](scenario-development_files/figure-html/scenario_eunisQ_weighted_plot-1.png)

``` r

elements::shutdown()
```
