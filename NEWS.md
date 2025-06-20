# elements 0.5.3 (20/06/2025)

* Removing superfluous code from `elements::predict_occ`.
* Including example code running scenario c in the README.
* Adding Zenodo README badge.
* Adding function `elements::env_filter`, which filters a given set of taxa using a set of predictor variables to retain the most suitable taxa only.

# elements 0.5.2 (17/06/2025)

* Bundling two additional example objects `elements::ExampleScenarios` and `elements::ExamplePlot`

# elements 0.5.1 (16/06/2025)

* Including test models (Silene flos-cuculi and Stellaria graminea) to ensure the package is functional (for these two taxa). These models are present in the "./inst/testdata/TestModels" object which is loaded if "./inst/extdata/Models" is not present, or if specified in the `elements::startup` function.

# elements 0.5.0 (11/06/2025)

* Adding the most recent iteration of the models, which we re-trained on the EVA data and data from the GBNVPD not yet incorporated into the EVA.
* Adding the 'holdopt' and 'limit' arguments to `elements::predict_occ_taxon` and `elements::predict_occ`.
* Removing the `elements::ModelTaxa` object.
* Adding the `elements::TaxonomicBackbone` object.
* Changing the name of the `elements::VariableNames` object to `elements::VariableLookup` and adding a new object `elements::VariableNames` which contains a vector of the model variable names only.

# elements 0.0.2 (12/04/2025)

* Adding the ability to plot multiple taxa in `elements::plot_me` function.
* Adding the argument "normalise" to the `elements::plot_me` function, which re-scales the y axis values in PDP plots using min-max scaling.

# elements 0.0.1 (11/04/2025)

* First working version with all modelled taxa included.
