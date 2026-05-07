# Calculate the euclidean distance between one set of environmental predictor variables and mutliple taxa

Calculate the euclidean distance between one set of environmental
predictor variables and mutliple taxa

## Usage

``` r
calc_distance_once(
  predictors,
  taxa = ModelledTaxaCodes,
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
elements::calc_distance_once(predictors = elements::ExampleScenarios[1,])
#>     scenario_code scenario_stage climate_scenario timeslice  scenario_name
#> 1             a.i       baseline       historical      2007 Climate Change
#> 2             a.i       baseline       historical      2007 Climate Change
#> 3             a.i       baseline       historical      2007 Climate Change
#> 4             a.i       baseline       historical      2007 Climate Change
#> 5             a.i       baseline       historical      2007 Climate Change
#> 6             a.i       baseline       historical      2007 Climate Change
#> 7             a.i       baseline       historical      2007 Climate Change
#> 8             a.i       baseline       historical      2007 Climate Change
#> 9             a.i       baseline       historical      2007 Climate Change
#> 10            a.i       baseline       historical      2007 Climate Change
#> 11            a.i       baseline       historical      2007 Climate Change
#> 12            a.i       baseline       historical      2007 Climate Change
#> 13            a.i       baseline       historical      2007 Climate Change
#> 14            a.i       baseline       historical      2007 Climate Change
#> 15            a.i       baseline       historical      2007 Climate Change
#> 16            a.i       baseline       historical      2007 Climate Change
#> 17            a.i       baseline       historical      2007 Climate Change
#> 18            a.i       baseline       historical      2007 Climate Change
#> 19            a.i       baseline       historical      2007 Climate Change
#> 20            a.i       baseline       historical      2007 Climate Change
#> 21            a.i       baseline       historical      2007 Climate Change
#> 22            a.i       baseline       historical      2007 Climate Change
#> 23            a.i       baseline       historical      2007 Climate Change
#> 24            a.i       baseline       historical      2007 Climate Change
#> 25            a.i       baseline       historical      2007 Climate Change
#> 26            a.i       baseline       historical      2007 Climate Change
#> 27            a.i       baseline       historical      2007 Climate Change
#> 28            a.i       baseline       historical      2007 Climate Change
#> 29            a.i       baseline       historical      2007 Climate Change
#> 30            a.i       baseline       historical      2007 Climate Change
#> 31            a.i       baseline       historical      2007 Climate Change
#> 32            a.i       baseline       historical      2007 Climate Change
#> 33            a.i       baseline       historical      2007 Climate Change
#> 34            a.i       baseline       historical      2007 Climate Change
#> 35            a.i       baseline       historical      2007 Climate Change
#> 36            a.i       baseline       historical      2007 Climate Change
#> 37            a.i       baseline       historical      2007 Climate Change
#> 38            a.i       baseline       historical      2007 Climate Change
#> 39            a.i       baseline       historical      2007 Climate Change
#> 40            a.i       baseline       historical      2007 Climate Change
#> 41            a.i       baseline       historical      2007 Climate Change
#> 42            a.i       baseline       historical      2007 Climate Change
#> 43            a.i       baseline       historical      2007 Climate Change
#> 44            a.i       baseline       historical      2007 Climate Change
#> 45            a.i       baseline       historical      2007 Climate Change
#> 46            a.i       baseline       historical      2007 Climate Change
#> 47            a.i       baseline       historical      2007 Climate Change
#> 48            a.i       baseline       historical      2007 Climate Change
#> 49            a.i       baseline       historical      2007 Climate Change
#> 50            a.i       baseline       historical      2007 Climate Change
#> 51            a.i       baseline       historical      2007 Climate Change
#> 52            a.i       baseline       historical      2007 Climate Change
#> 53            a.i       baseline       historical      2007 Climate Change
#> 54            a.i       baseline       historical      2007 Climate Change
#> 55            a.i       baseline       historical      2007 Climate Change
#> 56            a.i       baseline       historical      2007 Climate Change
#> 57            a.i       baseline       historical      2007 Climate Change
#> 58            a.i       baseline       historical      2007 Climate Change
#> 59            a.i       baseline       historical      2007 Climate Change
#> 60            a.i       baseline       historical      2007 Climate Change
#> 61            a.i       baseline       historical      2007 Climate Change
#> 62            a.i       baseline       historical      2007 Climate Change
#> 63            a.i       baseline       historical      2007 Climate Change
#> 64            a.i       baseline       historical      2007 Climate Change
#> 65            a.i       baseline       historical      2007 Climate Change
#> 66            a.i       baseline       historical      2007 Climate Change
#> 67            a.i       baseline       historical      2007 Climate Change
#> 68            a.i       baseline       historical      2007 Climate Change
#> 69            a.i       baseline       historical      2007 Climate Change
#> 70            a.i       baseline       historical      2007 Climate Change
#> 71            a.i       baseline       historical      2007 Climate Change
#> 72            a.i       baseline       historical      2007 Climate Change
#> 73            a.i       baseline       historical      2007 Climate Change
#> 74            a.i       baseline       historical      2007 Climate Change
#> 75            a.i       baseline       historical      2007 Climate Change
#> 76            a.i       baseline       historical      2007 Climate Change
#> 77            a.i       baseline       historical      2007 Climate Change
#> 78            a.i       baseline       historical      2007 Climate Change
#> 79            a.i       baseline       historical      2007 Climate Change
#> 80            a.i       baseline       historical      2007 Climate Change
#> 81            a.i       baseline       historical      2007 Climate Change
#> 82            a.i       baseline       historical      2007 Climate Change
#> 83            a.i       baseline       historical      2007 Climate Change
#> 84            a.i       baseline       historical      2007 Climate Change
#> 85            a.i       baseline       historical      2007 Climate Change
#> 86            a.i       baseline       historical      2007 Climate Change
#> 87            a.i       baseline       historical      2007 Climate Change
#> 88            a.i       baseline       historical      2007 Climate Change
#> 89            a.i       baseline       historical      2007 Climate Change
#> 90            a.i       baseline       historical      2007 Climate Change
#> 91            a.i       baseline       historical      2007 Climate Change
#> 92            a.i       baseline       historical      2007 Climate Change
#> 93            a.i       baseline       historical      2007 Climate Change
#> 94            a.i       baseline       historical      2007 Climate Change
#> 95            a.i       baseline       historical      2007 Climate Change
#> 96            a.i       baseline       historical      2007 Climate Change
#> 97            a.i       baseline       historical      2007 Climate Change
#> 98            a.i       baseline       historical      2007 Climate Change
#> 99            a.i       baseline       historical      2007 Climate Change
#> 100           a.i       baseline       historical      2007 Climate Change
#> 101           a.i       baseline       historical      2007 Climate Change
#> 102           a.i       baseline       historical      2007 Climate Change
#> 103           a.i       baseline       historical      2007 Climate Change
#> 104           a.i       baseline       historical      2007 Climate Change
#> 105           a.i       baseline       historical      2007 Climate Change
#> 106           a.i       baseline       historical      2007 Climate Change
#> 107           a.i       baseline       historical      2007 Climate Change
#> 108           a.i       baseline       historical      2007 Climate Change
#> 109           a.i       baseline       historical      2007 Climate Change
#> 110           a.i       baseline       historical      2007 Climate Change
#> 111           a.i       baseline       historical      2007 Climate Change
#> 112           a.i       baseline       historical      2007 Climate Change
#> 113           a.i       baseline       historical      2007 Climate Change
#> 114           a.i       baseline       historical      2007 Climate Change
#> 115           a.i       baseline       historical      2007 Climate Change
#> 116           a.i       baseline       historical      2007 Climate Change
#> 117           a.i       baseline       historical      2007 Climate Change
#> 118           a.i       baseline       historical      2007 Climate Change
#> 119           a.i       baseline       historical      2007 Climate Change
#> 120           a.i       baseline       historical      2007 Climate Change
#> 121           a.i       baseline       historical      2007 Climate Change
#> 122           a.i       baseline       historical      2007 Climate Change
#> 123           a.i       baseline       historical      2007 Climate Change
#> 124           a.i       baseline       historical      2007 Climate Change
#> 125           a.i       baseline       historical      2007 Climate Change
#> 126           a.i       baseline       historical      2007 Climate Change
#> 127           a.i       baseline       historical      2007 Climate Change
#> 128           a.i       baseline       historical      2007 Climate Change
#> 129           a.i       baseline       historical      2007 Climate Change
#> 130           a.i       baseline       historical      2007 Climate Change
#> 131           a.i       baseline       historical      2007 Climate Change
#> 132           a.i       baseline       historical      2007 Climate Change
#> 133           a.i       baseline       historical      2007 Climate Change
#> 134           a.i       baseline       historical      2007 Climate Change
#> 135           a.i       baseline       historical      2007 Climate Change
#> 136           a.i       baseline       historical      2007 Climate Change
#> 137           a.i       baseline       historical      2007 Climate Change
#> 138           a.i       baseline       historical      2007 Climate Change
#> 139           a.i       baseline       historical      2007 Climate Change
#> 140           a.i       baseline       historical      2007 Climate Change
#> 141           a.i       baseline       historical      2007 Climate Change
#> 142           a.i       baseline       historical      2007 Climate Change
#>                            taxon_code distance
#> 1                          abies_alba 2.555934
#> 2                 abies_borisii-regis 2.309030
#> 3                   abies_cephalonica 2.694487
#> 4                 abies_cilicica_aggr 2.806312
#> 5                       abies_grandis 2.407696
#> 6             abies_nordmanniana_aggr 2.347051
#> 7                       abies_pinsapo 2.840403
#> 8                       abies_procera 2.458599
#> 9           abietinella_abietina_aggr 2.791226
#> 10               abutilon_theophrasti 3.327876
#> 11                    acacia_dealbata 2.505171
#> 12                     acacia_saligna 2.749988
#> 13             acaena_novae-zelandiae 2.585918
#> 14                 acalypha_virginica 2.975288
#> 15         acantholimon_acerosum_aggr 2.932094
#> 16  acantholimon_caryophyllaceum_aggr 2.876160
#> 17               acantholimon_echinus 2.908434
#> 18               acantholimon_graecum 3.180421
#> 19         acantholimon_kotschyi_aggr 2.864661
#> 20        acantholimon_puberulum_aggr 2.939921
#> 21         acantholimon_ulicinum_aggr 3.238945
#> 22         acantholimon_venestum_aggr 2.904937
#> 23         acantholimon_venustum_aggr 2.939823
#> 24                  acanthus_hirsutus 2.996164
#> 25                acanthus_hungaricus 2.624549
#> 26               acanthus_mollis_aggr 2.542965
#> 27                  acanthus_spinosus 3.117766
#> 28                 acarospora_fuscata 2.735179
#> 29                acer_campestre_aggr 2.377266
#> 30                  acer_cappadocicum 2.324772
#> 31                    acer_granatense 2.487844
#> 32              acer_heldreichii_aggr 2.306909
#> 33                 acer_hyrcanum_aggr 2.367583
#> 34                       acer_lobelii 2.282457
#> 35           acer_monspessulanum_aggr 2.549000
#> 36                       acer_negundo 2.310079
#> 37                     acer_obtusatum 2.381580
#> 38                        acer_opalus 2.544401
#> 39              acer_platanoides_aggr 2.313910
#> 40                acer_pseudoplatanus 2.398831
#> 41                  acer_sempervirens 3.172461
#> 42                     acer_tataricum 2.329734
#> 43                  acer_trautvetteri 2.219941
#> 44              achillea_abrotanoides 2.964453
#> 45         achillea_ageratifolia_aggr 3.054955
#> 46                  achillea_ageratum 2.619836
#> 47             achillea_aleppica_aggr 3.001515
#> 48                   achillea_arabica 2.874238
#> 49             achillea_aspleniifolia 2.531237
#> 50               achillea_atrata_aggr 3.560280
#> 51           achillea_barrelieri_aggr 3.004771
#> 52                 achillea_biserrata 2.487038
#> 53                achillea_chrysocoma 2.799113
#> 54                 achillea_clavennae 3.485174
#> 55                  achillea_clusiana 2.680650
#> 56                achillea_clypeolata 2.976630
#> 57                 achillea_coarctata 2.940974
#> 58                   achillea_collina 2.722838
#> 59                   achillea_cretica 3.224479
#> 60              achillea_crithmifolia 2.858314
#> 61              achillea_distans_aggr 2.544754
#> 62           achillea_erba-rotta_aggr 2.984155
#> 63                   achillea_falcata 3.034782
#> 64                   achillea_fraasii 3.104393
#> 65              achillea_goniocephala 2.951848
#> 66               achillea_grandifolia 2.434288
#> 67               achillea_holosericea 2.958815
#> 68                  achillea_inundata 2.750106
#> 69             achillea_kotschyi_aggr 3.029677
#> 70                  achillea_latiloba 2.581690
#> 71                 achillea_ligustica 2.689131
#> 72                 achillea_lingulata 2.700000
#> 73               achillea_macrophylla 2.963445
#> 74             achillea_maritima_aggr 4.144242
#> 75                 achillea_micrantha 3.027727
#> 76          achillea_millefolium_aggr 2.606553
#> 77                 achillea_multifida 2.709642
#> 78                      achillea_nana 2.980353
#> 79              achillea_nobilis_aggr 2.835019
#> 80                achillea_ochroleuca 2.994853
#> 81                   achillea_odorata 2.953430
#> 82              achillea_oxyloba_aggr 2.847505
#> 83                 achillea_pannonica 2.804335
#> 84                   achillea_phrygia 2.812351
#> 85                 achillea_pratensis 2.447587
#> 86           achillea_pseudopectinata 3.007976
#> 87                  achillea_ptarmica 2.546960
#> 88                 achillea_pyrenaica 2.602288
#> 89                 achillea_roseoalba 2.998591
#> 90               achillea_salicifolia 2.485027
#> 91             achillea_santolinoides 2.913199
#> 92                   achillea_setacea 2.784108
#> 93                achillea_sintenisii 2.999139
#> 94                  achillea_styriaca 2.599962
#> 95               achillea_teretifolia 2.878998
#> 96                 achillea_tomentosa 2.973417
#> 97              achillea_vermicularis 2.845795
#> 98            achillea_virescens_aggr 2.723950
#> 99              achnatherum_bromoides 2.882711
#> 100         achnatherum_calamagrostis 2.910612
#> 101                        acis_rosea 2.879694
#> 102            aconitum_angustifolium 3.560520
#> 103                  aconitum_anthora 2.689427
#> 104            aconitum_burnatii_aggr 2.440905
#> 105                  aconitum_degenii 3.093760
#> 106              aconitum_firmum_aggr 2.879917
#> 107          aconitum_lycoctonum_aggr 2.777183
#> 108          aconitum_moldavicum_aggr 2.386576
#> 109            aconitum_napellus_aggr 2.799905
#> 110                 aconitum_plicatum 2.706651
#> 111                 aconitum_tauricum 2.471006
#> 112                  aconitum_toxicum 2.256411
#> 113          aconitum_variegatum_aggr 2.615015
#> 114                aconogonon_alpinum 2.724834
#> 115                    acorus_calamus 2.873149
#> 116                   actaea_europaea 2.352056
#> 117                    actaea_spicata 2.457230
#> 118      adenocarpus_complicatus_aggr 2.733935
#> 119           adenocarpus_decorticans 2.467678
#> 120            adenocarpus_telonensis 2.810807
#> 121             adenophora_liliifolia 2.553288
#> 122        adenostyles_alliariae_aggr 2.753257
#> 123           adenostyles_alpina_aggr 3.030527
#> 124                adenostyles_glabra 2.339919
#> 125           adenostyles_leucophylla 2.855560
#> 126         adiantum_capillus-veneris 2.475388
#> 127            adonis_aestivalis_aggr 3.426432
#> 128                      adonis_annua 3.211315
#> 129                    adonis_flammea 3.098754
#> 130            adonis_microcarpa_aggr 3.036791
#> 131                  adonis_pyrenaica 2.862420
#> 132                   adonis_vernalis 2.866848
#> 133          adoxa_moschatellina_aggr 2.314020
#> 134               aegilops_biuncialis 3.079116
#> 135                  aegilops_caudata 3.368934
#> 136               aegilops_columnaris 2.892161
#> 137              aegilops_comosa_aggr 3.077742
#> 138               aegilops_cylindrica 2.828225
#> 139               aegilops_geniculata 2.924409
#> 140                 aegilops_neglecta 2.963029
#> 141          aegilops_speltoides_aggr 2.937509
#> 142         aegilops_triuncialis_aggr 2.914169
#>  [ reached 'max' / getOption("max.print") -- omitted 8755 rows ]
```
