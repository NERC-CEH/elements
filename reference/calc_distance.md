# Calculate the euclidean distance between a set of environmental predictor variables and mutliple taxa

Calculate the euclidean distance between a set of environmental
predictor variables and mutliple taxa

## Usage

``` r
calc_distance(
  predictors,
  taxa = elements::ModelledTaxaCodes,
  vars = elements::VariableNames,
  method = "median",
  append = "ids"
)
```

## Arguments

- predictors:

  A data frame of predictors. Must include the following columns: L, M,
  N, R, S, SD, GP, tmax_sm, tmin_wt, prec_wt, prec_sm, and optionally
  taxon

- taxa:

  A vector of strings containing one or more taxa to calculate distances
  for. See
  [`elements::ModelledTaxaCodes`](https://NERC-CEH.github.io/elements/reference/ModelledTaxaCodes.md).

- vars:

  A vector of variable names, one or more of
  [`elements::VariableNames`](https://NERC-CEH.github.io/elements/reference/VariableNames.md).

- method:

  One of "median" or "mean" indicating whether to measure the euclidean
  distance from the predictor variables to the median or mean values.

- append:

  A string, one of "all", "predictors", or "ids" representing which
  columns from the predictors data frame to return with the results.

## Value

A data frame containing the euclidean distance for each taxon.

## Examples

``` r
elements::calc_distance(predictors = elements::ExampleScenarios)
#>       scenario_code scenario_stage climate_scenario timeslice  scenario_name
#> 1.1             a.i       baseline       historical      2007 Climate Change
#> 1.2             a.i       baseline       historical      2007 Climate Change
#> 1.3             a.i       baseline       historical      2007 Climate Change
#> 1.4             a.i       baseline       historical      2007 Climate Change
#> 1.5             a.i       baseline       historical      2007 Climate Change
#> 1.6             a.i       baseline       historical      2007 Climate Change
#> 1.7             a.i       baseline       historical      2007 Climate Change
#> 1.8             a.i       baseline       historical      2007 Climate Change
#> 1.9             a.i       baseline       historical      2007 Climate Change
#> 1.10            a.i       baseline       historical      2007 Climate Change
#> 1.11            a.i       baseline       historical      2007 Climate Change
#> 1.12            a.i       baseline       historical      2007 Climate Change
#> 1.13            a.i       baseline       historical      2007 Climate Change
#> 1.14            a.i       baseline       historical      2007 Climate Change
#> 1.15            a.i       baseline       historical      2007 Climate Change
#> 1.16            a.i       baseline       historical      2007 Climate Change
#> 1.17            a.i       baseline       historical      2007 Climate Change
#> 1.18            a.i       baseline       historical      2007 Climate Change
#> 1.19            a.i       baseline       historical      2007 Climate Change
#> 1.20            a.i       baseline       historical      2007 Climate Change
#> 1.21            a.i       baseline       historical      2007 Climate Change
#> 1.22            a.i       baseline       historical      2007 Climate Change
#> 1.23            a.i       baseline       historical      2007 Climate Change
#> 1.24            a.i       baseline       historical      2007 Climate Change
#> 1.25            a.i       baseline       historical      2007 Climate Change
#> 1.26            a.i       baseline       historical      2007 Climate Change
#> 1.27            a.i       baseline       historical      2007 Climate Change
#> 1.28            a.i       baseline       historical      2007 Climate Change
#> 1.29            a.i       baseline       historical      2007 Climate Change
#> 1.30            a.i       baseline       historical      2007 Climate Change
#> 1.31            a.i       baseline       historical      2007 Climate Change
#> 1.32            a.i       baseline       historical      2007 Climate Change
#> 1.33            a.i       baseline       historical      2007 Climate Change
#> 1.34            a.i       baseline       historical      2007 Climate Change
#> 1.35            a.i       baseline       historical      2007 Climate Change
#> 1.36            a.i       baseline       historical      2007 Climate Change
#> 1.37            a.i       baseline       historical      2007 Climate Change
#> 1.38            a.i       baseline       historical      2007 Climate Change
#> 1.39            a.i       baseline       historical      2007 Climate Change
#> 1.40            a.i       baseline       historical      2007 Climate Change
#> 1.41            a.i       baseline       historical      2007 Climate Change
#> 1.42            a.i       baseline       historical      2007 Climate Change
#> 1.43            a.i       baseline       historical      2007 Climate Change
#> 1.44            a.i       baseline       historical      2007 Climate Change
#> 1.45            a.i       baseline       historical      2007 Climate Change
#> 1.46            a.i       baseline       historical      2007 Climate Change
#> 1.47            a.i       baseline       historical      2007 Climate Change
#> 1.48            a.i       baseline       historical      2007 Climate Change
#> 1.49            a.i       baseline       historical      2007 Climate Change
#> 1.50            a.i       baseline       historical      2007 Climate Change
#> 1.51            a.i       baseline       historical      2007 Climate Change
#> 1.52            a.i       baseline       historical      2007 Climate Change
#> 1.53            a.i       baseline       historical      2007 Climate Change
#> 1.54            a.i       baseline       historical      2007 Climate Change
#> 1.55            a.i       baseline       historical      2007 Climate Change
#> 1.56            a.i       baseline       historical      2007 Climate Change
#> 1.57            a.i       baseline       historical      2007 Climate Change
#> 1.58            a.i       baseline       historical      2007 Climate Change
#> 1.59            a.i       baseline       historical      2007 Climate Change
#> 1.60            a.i       baseline       historical      2007 Climate Change
#> 1.61            a.i       baseline       historical      2007 Climate Change
#> 1.62            a.i       baseline       historical      2007 Climate Change
#> 1.63            a.i       baseline       historical      2007 Climate Change
#> 1.64            a.i       baseline       historical      2007 Climate Change
#> 1.65            a.i       baseline       historical      2007 Climate Change
#> 1.66            a.i       baseline       historical      2007 Climate Change
#> 1.67            a.i       baseline       historical      2007 Climate Change
#> 1.68            a.i       baseline       historical      2007 Climate Change
#> 1.69            a.i       baseline       historical      2007 Climate Change
#> 1.70            a.i       baseline       historical      2007 Climate Change
#> 1.71            a.i       baseline       historical      2007 Climate Change
#> 1.72            a.i       baseline       historical      2007 Climate Change
#> 1.73            a.i       baseline       historical      2007 Climate Change
#> 1.74            a.i       baseline       historical      2007 Climate Change
#> 1.75            a.i       baseline       historical      2007 Climate Change
#> 1.76            a.i       baseline       historical      2007 Climate Change
#> 1.77            a.i       baseline       historical      2007 Climate Change
#> 1.78            a.i       baseline       historical      2007 Climate Change
#> 1.79            a.i       baseline       historical      2007 Climate Change
#> 1.80            a.i       baseline       historical      2007 Climate Change
#> 1.81            a.i       baseline       historical      2007 Climate Change
#> 1.82            a.i       baseline       historical      2007 Climate Change
#> 1.83            a.i       baseline       historical      2007 Climate Change
#> 1.84            a.i       baseline       historical      2007 Climate Change
#> 1.85            a.i       baseline       historical      2007 Climate Change
#> 1.86            a.i       baseline       historical      2007 Climate Change
#> 1.87            a.i       baseline       historical      2007 Climate Change
#> 1.88            a.i       baseline       historical      2007 Climate Change
#> 1.89            a.i       baseline       historical      2007 Climate Change
#> 1.90            a.i       baseline       historical      2007 Climate Change
#> 1.91            a.i       baseline       historical      2007 Climate Change
#> 1.92            a.i       baseline       historical      2007 Climate Change
#> 1.93            a.i       baseline       historical      2007 Climate Change
#> 1.94            a.i       baseline       historical      2007 Climate Change
#> 1.95            a.i       baseline       historical      2007 Climate Change
#> 1.96            a.i       baseline       historical      2007 Climate Change
#> 1.97            a.i       baseline       historical      2007 Climate Change
#> 1.98            a.i       baseline       historical      2007 Climate Change
#> 1.99            a.i       baseline       historical      2007 Climate Change
#> 1.100           a.i       baseline       historical      2007 Climate Change
#> 1.101           a.i       baseline       historical      2007 Climate Change
#> 1.102           a.i       baseline       historical      2007 Climate Change
#> 1.103           a.i       baseline       historical      2007 Climate Change
#> 1.104           a.i       baseline       historical      2007 Climate Change
#> 1.105           a.i       baseline       historical      2007 Climate Change
#> 1.106           a.i       baseline       historical      2007 Climate Change
#> 1.107           a.i       baseline       historical      2007 Climate Change
#> 1.108           a.i       baseline       historical      2007 Climate Change
#> 1.109           a.i       baseline       historical      2007 Climate Change
#> 1.110           a.i       baseline       historical      2007 Climate Change
#> 1.111           a.i       baseline       historical      2007 Climate Change
#> 1.112           a.i       baseline       historical      2007 Climate Change
#> 1.113           a.i       baseline       historical      2007 Climate Change
#> 1.114           a.i       baseline       historical      2007 Climate Change
#> 1.115           a.i       baseline       historical      2007 Climate Change
#> 1.116           a.i       baseline       historical      2007 Climate Change
#> 1.117           a.i       baseline       historical      2007 Climate Change
#> 1.118           a.i       baseline       historical      2007 Climate Change
#> 1.119           a.i       baseline       historical      2007 Climate Change
#> 1.120           a.i       baseline       historical      2007 Climate Change
#> 1.121           a.i       baseline       historical      2007 Climate Change
#> 1.122           a.i       baseline       historical      2007 Climate Change
#> 1.123           a.i       baseline       historical      2007 Climate Change
#> 1.124           a.i       baseline       historical      2007 Climate Change
#> 1.125           a.i       baseline       historical      2007 Climate Change
#> 1.126           a.i       baseline       historical      2007 Climate Change
#> 1.127           a.i       baseline       historical      2007 Climate Change
#> 1.128           a.i       baseline       historical      2007 Climate Change
#> 1.129           a.i       baseline       historical      2007 Climate Change
#> 1.130           a.i       baseline       historical      2007 Climate Change
#> 1.131           a.i       baseline       historical      2007 Climate Change
#> 1.132           a.i       baseline       historical      2007 Climate Change
#> 1.133           a.i       baseline       historical      2007 Climate Change
#> 1.134           a.i       baseline       historical      2007 Climate Change
#> 1.135           a.i       baseline       historical      2007 Climate Change
#> 1.136           a.i       baseline       historical      2007 Climate Change
#> 1.137           a.i       baseline       historical      2007 Climate Change
#> 1.138           a.i       baseline       historical      2007 Climate Change
#> 1.139           a.i       baseline       historical      2007 Climate Change
#> 1.140           a.i       baseline       historical      2007 Climate Change
#> 1.141           a.i       baseline       historical      2007 Climate Change
#> 1.142           a.i       baseline       historical      2007 Climate Change
#>                              taxon_code distance
#> 1.1                          abies_alba 2.555934
#> 1.2                 abies_borisii-regis 2.309030
#> 1.3                   abies_cephalonica 2.694487
#> 1.4                 abies_cilicica_aggr 2.806312
#> 1.5                       abies_grandis 2.407696
#> 1.6             abies_nordmanniana_aggr 2.347051
#> 1.7                       abies_pinsapo 2.840403
#> 1.8                       abies_procera 2.458599
#> 1.9           abietinella_abietina_aggr 2.791226
#> 1.10               abutilon_theophrasti 3.327876
#> 1.11                    acacia_dealbata 2.505171
#> 1.12                     acacia_saligna 2.749988
#> 1.13             acaena_novae-zelandiae 2.585918
#> 1.14                 acalypha_virginica 2.975288
#> 1.15         acantholimon_acerosum_aggr 2.932094
#> 1.16  acantholimon_caryophyllaceum_aggr 2.876160
#> 1.17               acantholimon_echinus 2.908434
#> 1.18               acantholimon_graecum 3.180421
#> 1.19         acantholimon_kotschyi_aggr 2.864661
#> 1.20        acantholimon_puberulum_aggr 2.939921
#> 1.21         acantholimon_ulicinum_aggr 3.238945
#> 1.22         acantholimon_venestum_aggr 2.904937
#> 1.23         acantholimon_venustum_aggr 2.939823
#> 1.24                  acanthus_hirsutus 2.996164
#> 1.25                acanthus_hungaricus 2.624549
#> 1.26               acanthus_mollis_aggr 2.542965
#> 1.27                  acanthus_spinosus 3.117766
#> 1.28                 acarospora_fuscata 2.735179
#> 1.29                acer_campestre_aggr 2.377266
#> 1.30                  acer_cappadocicum 2.324772
#> 1.31                    acer_granatense 2.487844
#> 1.32              acer_heldreichii_aggr 2.306909
#> 1.33                 acer_hyrcanum_aggr 2.367583
#> 1.34                       acer_lobelii 2.282457
#> 1.35           acer_monspessulanum_aggr 2.549000
#> 1.36                       acer_negundo 2.310079
#> 1.37                     acer_obtusatum 2.381580
#> 1.38                        acer_opalus 2.544401
#> 1.39              acer_platanoides_aggr 2.313910
#> 1.40                acer_pseudoplatanus 2.398831
#> 1.41                  acer_sempervirens 3.172461
#> 1.42                     acer_tataricum 2.329734
#> 1.43                  acer_trautvetteri 2.219941
#> 1.44              achillea_abrotanoides 2.964453
#> 1.45         achillea_ageratifolia_aggr 3.054955
#> 1.46                  achillea_ageratum 2.619836
#> 1.47             achillea_aleppica_aggr 3.001515
#> 1.48                   achillea_arabica 2.874238
#> 1.49             achillea_aspleniifolia 2.531237
#> 1.50               achillea_atrata_aggr 3.560280
#> 1.51           achillea_barrelieri_aggr 3.004771
#> 1.52                 achillea_biserrata 2.487038
#> 1.53                achillea_chrysocoma 2.799113
#> 1.54                 achillea_clavennae 3.485174
#> 1.55                  achillea_clusiana 2.680650
#> 1.56                achillea_clypeolata 2.976630
#> 1.57                 achillea_coarctata 2.940974
#> 1.58                   achillea_collina 2.722838
#> 1.59                   achillea_cretica 3.224479
#> 1.60              achillea_crithmifolia 2.858314
#> 1.61              achillea_distans_aggr 2.544754
#> 1.62           achillea_erba-rotta_aggr 2.984155
#> 1.63                   achillea_falcata 3.034782
#> 1.64                   achillea_fraasii 3.104393
#> 1.65              achillea_goniocephala 2.951848
#> 1.66               achillea_grandifolia 2.434288
#> 1.67               achillea_holosericea 2.958815
#> 1.68                  achillea_inundata 2.750106
#> 1.69             achillea_kotschyi_aggr 3.029677
#> 1.70                  achillea_latiloba 2.581690
#> 1.71                 achillea_ligustica 2.689131
#> 1.72                 achillea_lingulata 2.700000
#> 1.73               achillea_macrophylla 2.963445
#> 1.74             achillea_maritima_aggr 4.144242
#> 1.75                 achillea_micrantha 3.027727
#> 1.76          achillea_millefolium_aggr 2.606553
#> 1.77                 achillea_multifida 2.709642
#> 1.78                      achillea_nana 2.980353
#> 1.79              achillea_nobilis_aggr 2.835019
#> 1.80                achillea_ochroleuca 2.994853
#> 1.81                   achillea_odorata 2.953430
#> 1.82              achillea_oxyloba_aggr 2.847505
#> 1.83                 achillea_pannonica 2.804335
#> 1.84                   achillea_phrygia 2.812351
#> 1.85                 achillea_pratensis 2.447587
#> 1.86           achillea_pseudopectinata 3.007976
#> 1.87                  achillea_ptarmica 2.546960
#> 1.88                 achillea_pyrenaica 2.602288
#> 1.89                 achillea_roseoalba 2.998591
#> 1.90               achillea_salicifolia 2.485027
#> 1.91             achillea_santolinoides 2.913199
#> 1.92                   achillea_setacea 2.784108
#> 1.93                achillea_sintenisii 2.999139
#> 1.94                  achillea_styriaca 2.599962
#> 1.95               achillea_teretifolia 2.878998
#> 1.96                 achillea_tomentosa 2.973417
#> 1.97              achillea_vermicularis 2.845795
#> 1.98            achillea_virescens_aggr 2.723950
#> 1.99              achnatherum_bromoides 2.882711
#> 1.100         achnatherum_calamagrostis 2.910612
#> 1.101                        acis_rosea 2.879694
#> 1.102            aconitum_angustifolium 3.560520
#> 1.103                  aconitum_anthora 2.689427
#> 1.104            aconitum_burnatii_aggr 2.440905
#> 1.105                  aconitum_degenii 3.093760
#> 1.106              aconitum_firmum_aggr 2.879917
#> 1.107          aconitum_lycoctonum_aggr 2.777183
#> 1.108          aconitum_moldavicum_aggr 2.386576
#> 1.109            aconitum_napellus_aggr 2.799905
#> 1.110                 aconitum_plicatum 2.706651
#> 1.111                 aconitum_tauricum 2.471006
#> 1.112                  aconitum_toxicum 2.256411
#> 1.113          aconitum_variegatum_aggr 2.615015
#> 1.114                aconogonon_alpinum 2.724834
#> 1.115                    acorus_calamus 2.873149
#> 1.116                   actaea_europaea 2.352056
#> 1.117                    actaea_spicata 2.457230
#> 1.118      adenocarpus_complicatus_aggr 2.733935
#> 1.119           adenocarpus_decorticans 2.467678
#> 1.120            adenocarpus_telonensis 2.810807
#> 1.121             adenophora_liliifolia 2.553288
#> 1.122        adenostyles_alliariae_aggr 2.753257
#> 1.123           adenostyles_alpina_aggr 3.030527
#> 1.124                adenostyles_glabra 2.339919
#> 1.125           adenostyles_leucophylla 2.855560
#> 1.126         adiantum_capillus-veneris 2.475388
#> 1.127            adonis_aestivalis_aggr 3.426432
#> 1.128                      adonis_annua 3.211315
#> 1.129                    adonis_flammea 3.098754
#> 1.130            adonis_microcarpa_aggr 3.036791
#> 1.131                  adonis_pyrenaica 2.862420
#> 1.132                   adonis_vernalis 2.866848
#> 1.133          adoxa_moschatellina_aggr 2.314020
#> 1.134               aegilops_biuncialis 3.079116
#> 1.135                  aegilops_caudata 3.368934
#> 1.136               aegilops_columnaris 2.892161
#> 1.137              aegilops_comosa_aggr 3.077742
#> 1.138               aegilops_cylindrica 2.828225
#> 1.139               aegilops_geniculata 2.924409
#> 1.140                 aegilops_neglecta 2.963029
#> 1.141          aegilops_speltoides_aggr 2.937509
#> 1.142         aegilops_triuncialis_aggr 2.914169
#>  [ reached 'max' / getOption("max.print") -- omitted 320150 rows ]
```
