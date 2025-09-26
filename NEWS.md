# elements 0.6.0 (26/09/2025)

* Adding object `elements::Gradients` which contains sequences of values between the minima and maxima for each environmental variable in `elements::VariableNames`.
* Adding object `elements::HOAData` which contains predictions for each variable along its gradient (see `elements::Gradients`) produced using the `elements::predict_occ` function with the 'holdopt' argument set to all other variables.
* Incorporating the `elements::HOAData` object into `elements::plot_me`, which can be selected for plotting by setting thr 'me_type' argument to "hoa".
* Ensuring that the X axis limits in the `elements::plot_me` extend to the minima and maxima of the gradients as present in `elements::Gradients`.

# elements 0.5.7 (25/09/2025)

* Fixing issue where `elements::env_filter` does not work when there are no taxa-predictor combinations screened out.

# elements 0.5.6 (22/09/2025)

* Adding two functions `elements::envelope_filter` and `elements::envelope_filter_taxon` which uses the distributional data present in `elements::NicheWidths` to apply envelope filters.
  These functions are integrated into the `elements::env_filter` function as a pre-screening option.
* Separating out the calculation of euclidean distance in the `elements::env_filter` function into two new functions: `elements::calc_distance_once` and `elements::calc_distance`.
* Ensuring that all objects have data for the taxa present in the ENMs.
* Changing the 'append_predictors' argument to 'append' in `elements::predict_occ_taxon`, `elements::predict_occ`, `elements::calc_distance_once`, and `elements::calc_distance`,
  this argument now controls which columns are appended to the results, namely: "all": all columns supplied in the predictors dataframe; "predictors": all predictor variable columns (`elements::VariableNames`); or "ids": all non-predictor variable columns.
* Adding three new objects `elements::EUNISDiagnosticTaxa`, `elements::EUNISConstantTaxa`, and `elements::EUNISDominantTaxa`, derived from https://doi.org/10.1111/avsc.12519.
* Creating new pkgdown site article "Environmental Filtering".

# elements 0.5.5 (18/09/2025)

* Full model training re-run after addressing outstanding taxonomic alignment issues. Now at 6631 taxa.
* Bundling imbalance information in `elements::Imbalances`
* Re-creating `elements::TaxonomicBackbone` object, now using GBIF as EuroSL does not include lichen or hybrid taxa. I will also align this taxonomic backbone to the EIVE1.5 "Euro+Med augmented" taxonomy upon release of EIVE1.5.
* Changing pkgdown site theme to sandstone.
* Improving `elements::startup`, which now creates a new environment (elementsEnv) in the parent environment which contains the ENMs, rather than simply loading the ENMs directly into the global environment.

# elements 0.5.4 (27/06/2025)

* Adding pdf package manual.
* Moving README content to articles.
* Adding pkgdown website.

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
