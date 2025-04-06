
<!-- README.md is generated from README.Rmd. Please edit that file -->

# elements

<!-- badges: start -->

[![Generic
badge](https://img.shields.io/badge/Version-0.0.1-green.svg)]()
[![License: CC BY
4.0](https://img.shields.io/badge/License-LGPL%203.0-lightgrey.svg)](https://opensource.org/license/lgpl-3-0)
<!-- badges: end -->

`elements` is a R package containing **e**co**l**ogical nich**e**
**m**od**e**ls for the pla**n**t**s** of Europe.

The Ecological Niche Models (ENMs) adhere to Hutchinsonian
conceptualisation of the ecological niche as an n-dimensional
hypervolume (Hutchinson, 1957) and are comprised of `e1071` (Meyer et
al., 2024) Support Vector Machine (SVM) models.

For more information please see Marshall et al (in prep).

## Installation

You can install the development version of elements from
[Github](https://github.com/NERC-CEH/elements) with:

``` r
# install.packages("remotes")
remotes::install_github("NERC-CEH/elements")
```

## Usage

### Retrieving models

Due to the total size of the 128 ENMs currently included in the
`elements` r package the ENMs are not exported as a .rda object. Instead
they are made available through a `filehash` (Peng, 2005) database. To
access the ENMs a connection to this database must be initialised, the
ENMs can then be accessed like as a list but without loading all ENMs
into memory.

``` r
elements::startup()

model <- OccModels[["stellaria_graminea"]]
```

    #> 
    #> Call:
    #> svm(formula = Presence ~ L + M + N + R + S + SD + GP + bio05 + bio06 + 
    #>     bio16 + bio17, data = data, type = "C-classification", probability = TRUE)
    #> 
    #> 
    #> Parameters:
    #>    SVM-Type:  C-classification 
    #>  SVM-Kernel:  radial 
    #>        cost:  0.1 
    #> 
    #> Number of Support Vectors:  15039

### Using the models

The raw ENMs retrieved using the method above can be used as regular
`e1071` SVM model objects. Alternatively, the helper function
`elements::predict_occ` retrieves these models using the method above,
and eases access to the results.

``` r
results <- elements::predict_occ(taxon = "stellaria_graminea", predictors = elements::ExampleData, pa = "Present", dp = 2)
```

    #>   Present
    #> 1    0.00
    #> 2    0.90
    #> 3    0.58
    #> 4    0.01
    #> 5    0.00
    #> 6    0.00

### Shutting down

At the end of the analyis run `elements::shutdown` to close the
connection to the filehash database.

``` r
elements::shutdown()
```

## Inspecting models

Several datasets are available to examine the ENM model performance and
aid in model interpretation.

The performance measures can be retrieved from the
`elements::PerformanceMeasures` object; for example, below the balanced
accuracy from the random holdout sample and the model tuning
spatio-temporal cross-validation (Schratz et al., 2024) are displayed.

``` r
pm <- elements::PerformanceMeasures

pm_taxon <- pm[pm[["taxon_code"]] == "stellaria_graminea", c(1, 7, 8)]
```

    #>           taxon_code Holdout.BalancedAccuracy STCV.BalancedAccuracy
    #> 4 stellaria_graminea                0.8427822             0.8439437

The marginal effects of an ENM, in the form of Partial Dependency
Profile (PDP) and Accumulated Local Effect (ALE) plots (Molnar, 2018)
can also be viewed using the `elements::plot_me` function.

``` r
elements::plot_me(taxon = "stellaria_graminea", 
                  me_type = "ale", 
                  free_y = FALSE, 
                  presences = TRUE,
                  vars = c("L", "M", "N", "R", "S", "SD", "GP", "bio05", "bio06", "bio16", "bio17"))
```

<img src="man/figures/README-me_plot_print-1.png" width="100%" />

## References

Hutchinson, G.E., 1957. Concluding Remarks. Cold Spring Harbor Symposia
on Quantitative Biology 22, 415–427.
<https://doi.org/10.1101/SQB.1957.022.01.039>

Meyer, D., Dimitriadou, E., Hornik, K., Weingessel, A., Leisch, F.,
2024. e1071: Misc Functions of the Department of Statistics, Probability
Theory Group (Formerly: E1071), TU Wien.
<https://doi.org/10.32614/CRAN.package.e1071>

Molnar, C., 2018. iml: An R package for Interpretable Machine Learning.
JOSS 3, 786. <https://doi.org/10.21105/joss.00786>

Peng, R.D., 2005. filehash: Simple Key-Value Database.
<https://doi.org/10.32614/CRAN.package.filehash>

Schratz, P., Becker, M., Lang, M., Brenning, A., 2024. mlr3spatiotempcv:
Spatiotemporal Resampling Methods for Machine Learning in R. Journal of
Statistical Software 111, 1–36. <https://doi.org/10.18637/jss.v111.i07>
