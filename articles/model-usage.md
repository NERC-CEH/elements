# Model Usage

## Retrieving Models

``` r

library(e1071)
library(elements)
library(filehash)
```

Due to the total size of the ENMs currently included in `elements`
(1.8GB when compressed, 7.5GB in memory) the ENMs are not exported in a
.rda object. Instead they are made available through a `filehash` (Peng,
2005) database, which provides access to the ENMs without loading all
models into memory. To access the ENMs a connection to this database
must be initialised using
[`elements::startup`](https://NERC-CEH.github.io/elements/reference/startup.md).
As mentioned above the Github repository does not include the
“./inst/extdata/Models” object containing all the ENMs, the
[`elements::startup`](https://NERC-CEH.github.io/elements/reference/startup.md)
will check whether the “./inst/extdata/Models” is present and if it is
not found will load the “./inst/testdata/TestModels” models instead. The
models to load can also be accessed by passing “all” or “test” to the
‘models’ argument of
[`elements::startup`](https://NERC-CEH.github.io/elements/reference/startup.md).

``` r

elements::startup()
#> elements startup completed.

model <- elementsEnv$Models[["stellaria_graminea"]]
```

    #> 
    #> Call:
    #> svm(formula = Presence ~ L + M + N + R + S + SD + GP + tmax_sm + 
    #>     tmin_wt + prec_sm + prec_wt, data = data, type = "C-classification", 
    #>     probability = TRUE)
    #> 
    #> 
    #> Parameters:
    #>    SVM-Type:  C-classification 
    #>  SVM-Kernel:  radial 
    #>        cost:  0.01 
    #> 
    #> Number of Support Vectors:  53671

## Generating Predictions

The raw ENMs retrieved using the method above can be used as regular
`e1071` SVM model objects. Alternatively, the helper function
[`elements::predict_occ_taxon`](https://NERC-CEH.github.io/elements/reference/predict_occ_taxon.md)
retrieves a model using the method above, generates predictions, and
formats the results as a data frame.

``` r

results <- elements::predict_occ_taxon(taxon = "stellaria_graminea", predictors = elements::ExampleData1, pa = "Present", limit = NULL, dp = 2, append = "ids")
```

    #>   Present
    #> 1    0.10
    #> 2    0.08
    #> 3    0.09
    #> 4    0.13
    #> 5    0.07
    #> 6    0.48

An additional helper function
[`elements::predict_occ`](https://NERC-CEH.github.io/elements/reference/predict_occ.md)
can generate predictions for multiple taxa, by either specifing the taxa
to model in the ‘taxa’ argument, or by setting ‘taxa’ to NULL and
including an additional column in the predictors data frame named
‘taxon_code’.

``` r

results <- elements::predict_occ(taxa = NULL, predictors = elements::ExampleData2, pa = "Present", limit = NULL, holdopt = NULL, dp = 2, append = "ids")
```

    #>                  taxon_code Present
    #> 201 silene_flos-cuculi_aggr    0.02
    #> 202 silene_flos-cuculi_aggr    0.00
    #> 203 silene_flos-cuculi_aggr    0.17
    #> 204 silene_flos-cuculi_aggr    0.01
    #> 205 silene_flos-cuculi_aggr    0.28
    #> 206 silene_flos-cuculi_aggr    0.00

Two helper arguments provide additional functionality in controlling
model use. First, is the ‘limit’ argument, which assigns probability
values of zero if one or more predictors are outside a specified range
e.g. the 10% and 90% quantiles (see
[`elements::NicheWidths`](https://NERC-CEH.github.io/elements/reference/NicheWidths.md)).
Second, is the ‘holdopt’ argument, which holds specified variable values
at their optima (as defined by the mean value present in
[`elements::NicheWidths`](https://NERC-CEH.github.io/elements/reference/NicheWidths.md)).

As a simple demonstration, below two sets of predictions for *Stellaria
graminea* are generated, holding all variables apart from N at their
optima: 1) with no limit set, and 2) with a limit set to the 1% and 99%
quantiles.

``` r

n_gradient <- data.frame("N" = seq(0, 10, 0.01))

vary_N_no_limit <- elements::predict_occ_taxon(taxon = "stellaria_graminea", predictors = n_gradient,
                                               pa = "Present", limit = NULL, holdopt = c("tmax_sm", "tmin_wt", "prec_wt", "prec_sm", "GP", "L", "M", "R", "S", "SD"),
                                               dp = 2, append = "predictors")

vary_N_q01_q99 <- elements::predict_occ_taxon(taxon = "stellaria_graminea", predictors = n_gradient,
                                              pa = "Present", limit = "q01_q99", holdopt = c("tmax_sm", "tmin_wt", "prec_wt", "prec_sm", "GP", "L", "M", "R", "S", "SD"),
                                              dp = 2, append = "predictors")
```

![](model-usage_files/figure-html/limit_and_holdopt_demo_plots-1.png)

Please note that as ten out of the eleven variables are held at their
optima the predicted probabilities will be high as the influence of
unsuitable N values will be partially offset. Consequently, the shape of
the response curves above will be wider than the corresponding PDP plot
produced with the
[`elements::plot_me`](https://NERC-CEH.github.io/elements/reference/plot_me.md)
function (see the **Model Inspection**).

## Environmental filtering

`elements` can also be used to filter species pools based on a given set
of predictor values using the function
[`elements::env_filter`](https://NERC-CEH.github.io/elements/reference/env_filter.md).
Two sets of methods are available: 1) “svm” which generates predictions
using
[`elements::predict_occ`](https://NERC-CEH.github.io/elements/reference/predict_occ.md)
and uses the resultant probability values; and 2) “mean” and “median”
which calculates the normalised euclidean distance between the values
supplied in the ‘predictors’ argument and the mean or median niche
positions as present in
[`elements::NicheWidths`](https://NERC-CEH.github.io/elements/reference/NicheWidths.md).

NOTE: The mean and median methods are only included for demonstrative
purposes only and should not be used in practice as they do not consider
the joint distribution of variables as expressed through the SVM model
hypervolumes.

The option to apply the
[`elements::envelope_filter`](https://NERC-CEH.github.io/elements/reference/envelope_filter.md)
function, which first screens the supplied taxa to check whether the
predictor values are within a given range as supplied to the ‘limit’
argument (“min_max”, “q01_q99”, “q05_q95”, “q10_q90”, “q25_q75”), is
controlled by the ‘screen’ argument;
[`elements::env_filter`](https://NERC-CEH.github.io/elements/reference/env_filter.md)
will then only run the more computationally expensive
[`elements::predict_occ`](https://NERC-CEH.github.io/elements/reference/predict_occ.md)
or
[`elements::calc_distance`](https://NERC-CEH.github.io/elements/reference/calc_distance.md)
functions for the taxa within the limits. This is highly recommended as
it usually results in a 95% reduction in the number of taxa being
supplied to
[`elements::predict_occ`](https://NERC-CEH.github.io/elements/reference/predict_occ.md)
or
[`elements::calc_distance`](https://NERC-CEH.github.io/elements/reference/calc_distance.md),
greatly improving performance.

For example, below
[`elements::env_filter`](https://NERC-CEH.github.io/elements/reference/env_filter.md)
is applied to all taxa in
[`elements::ModelledTaxaCodes`](https://NERC-CEH.github.io/elements/reference/ModelledTaxaCodes.md)
using the svm method, with the predictors derived from
[`elements::ExampleScenarios`](https://NERC-CEH.github.io/elements/reference/ExampleScenarios.md).

``` r

filter_results <- elements::env_filter(predictors = elements::ExampleScenarios[1,],
                                       taxa = elements::ModelledTaxaCodes,
                                       screen = TRUE, method = "svm", limit = "min_max", 
                                       exclude = NULL, threshold = NULL, 
                                       append = "ids")
```

    #>    scenario_code scenario_stage climate_scenario timeslice  scenario_name
    #> 1            a.i       baseline       historical      2007 Climate Change
    #> 2            a.i       baseline       historical      2007 Climate Change
    #> 3            a.i       baseline       historical      2007 Climate Change
    #> 4            a.i       baseline       historical      2007 Climate Change
    #> 5            a.i       baseline       historical      2007 Climate Change
    #> 6            a.i       baseline       historical      2007 Climate Change
    #> 7            a.i       baseline       historical      2007 Climate Change
    #> 8            a.i       baseline       historical      2007 Climate Change
    #> 9            a.i       baseline       historical      2007 Climate Change
    #> 10           a.i       baseline       historical      2007 Climate Change
    #>                   taxon_code Present
    #> 1                 abies_alba   0.052
    #> 2  abietinella_abietina_aggr   0.005
    #> 3        acer_campestre_aggr   0.038
    #> 4               acer_negundo   0.000
    #> 5      acer_platanoides_aggr   0.028
    #> 6        acer_pseudoplatanus   0.032
    #> 7  achillea_millefolium_aggr   0.052
    #> 8          achillea_ptarmica   0.300
    #> 9     aconitum_napellus_aggr   0.034
    #> 10        aconogonon_alpinum   0.002

In practice, given the limited size of regional species pools and/or
interest in a particular group of taxa only it is often more practical
to supply a reduced list of taxa to
[`elements::env_filter`](https://NERC-CEH.github.io/elements/reference/env_filter.md).

## Niche overlap

The ability to calculate the niche overlap between taxa is provided
through the
[`elements::calc_overlap`](https://NERC-CEH.github.io/elements/reference/calc_overlap.md)
function, below the niche overlaps for the taxa present in
[`elements::ExamplePlot`](https://NERC-CEH.github.io/elements/reference/ExamplePlot.md)
are displayed.

``` r

elements::calc_overlap(taxa = elements::ExamplePlot$taxon_code)
#>            taxon_code_1            taxon_code_2         M         N         R
#> 1        carex_rostrata    equisetum_fluviatile 0.8519745 0.8527801 0.7154886
#> 2        carex_rostrata    galium_palustre_aggr 0.9529068 0.8730262 0.8692739
#> 3        carex_rostrata    hydrocotyle_vulgaris 0.8923670 0.7888055 0.9029989
#> 4        carex_rostrata     juncus_effusus_aggr 0.9233840 0.7264880 0.7426006
#> 5        carex_rostrata silene_flos-cuculi_aggr 0.4747225 0.7705237 0.5393033
#> 6  equisetum_fluviatile    galium_palustre_aggr 0.8597509 0.8916038 0.8070465
#> 7  equisetum_fluviatile    hydrocotyle_vulgaris 0.9069901 0.6709424 0.7703504
#> 8  equisetum_fluviatile     juncus_effusus_aggr 0.8268378 0.8051759 0.5137036
#> 9  equisetum_fluviatile silene_flos-cuculi_aggr 0.5382811 0.7257023 0.7648795
#> 10 galium_palustre_aggr    hydrocotyle_vulgaris 0.9036505 0.7499224 0.9533803
#> 11 galium_palustre_aggr     juncus_effusus_aggr 0.9121315 0.7268686 0.6500691
#> 12 galium_palustre_aggr silene_flos-cuculi_aggr 0.4946227 0.8229079 0.6203694
#> 13 hydrocotyle_vulgaris     juncus_effusus_aggr 0.9078902 0.5473666 0.6699855
#> 14 hydrocotyle_vulgaris silene_flos-cuculi_aggr 0.5681969 0.8634961 0.5885693
#> 15  juncus_effusus_aggr silene_flos-cuculi_aggr 0.5253921 0.5825405 0.4232905
#>            L         S        GP        SD   tmax_sm   tmin_wt   prec_sm
#> 1  0.9534857 0.9018200 0.8895131 0.9616746 0.9180752 0.9122277 0.8068911
#> 2  0.7031028 0.8786683 0.9141866 0.8076910 0.8149978 0.8006960 0.8456228
#> 3  0.9577337 0.8995295 0.9073943 0.7917643 0.8867649 0.6322329 0.7772887
#> 4  0.5571925 0.7783371 0.7245142 0.6733555 0.6699229 0.8590617 0.7077050
#> 5  0.7624087 0.7035775 0.5940664 0.6279346 0.8144776 0.8606365 0.8804209
#> 6  0.7136967 0.7817371 0.8619262 0.8026547 0.7413915 0.7278565 0.6845545
#> 7  0.9418248 0.8027135 0.9418757 0.8024245 0.9013787 0.6584548 0.8705123
#> 8  0.5321420 0.7179613 0.6691083 0.6840620 0.5978726 0.8115278 0.5777503
#> 9  0.7944863 0.7813540 0.6235386 0.6504700 0.7430644 0.8201861 0.7197848
#> 10 0.6952429 0.9662553 0.8795880 0.9632744 0.7672007 0.6078897 0.7160735
#> 11 0.6722000 0.8862015 0.7679011 0.8450962 0.7768713 0.8398990 0.8306699
#> 12 0.6063674 0.6926046 0.6292379 0.7270578 0.9040652 0.8157288 0.9429046
#> 13 0.5535680 0.8553373 0.6644025 0.8423341 0.6151226 0.6792638 0.6086617
#> 14 0.7736839 0.6818971 0.6285922 0.7491804 0.7788993 0.7069502 0.7584810
#> 15 0.4130216 0.6945045 0.5087414 0.6518736 0.7236969 0.9621998 0.7789439
#>      prec_wt
#> 1  0.8944845
#> 2  0.8561480
#> 3  0.9563830
#> 4  0.7181953
#> 5  0.8993430
#> 6  0.7566310
#> 7  0.8784838
#> 8  0.6298151
#> 9  0.8405807
#> 10 0.8739631
#> 11 0.8150855
#> 12 0.8374351
#> 13 0.7227883
#> 14 0.9258150
#> 15 0.6923265
```

### Shutting down

At the end of the analysis run
[`elements::shutdown`](https://NERC-CEH.github.io/elements/reference/shutdown.md)
to close the connection to the filehash database.

``` r

elements::shutdown()
```
