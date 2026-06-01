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
#> 1             a.i       baseline       historical      2025 Climate Change
#> 2             a.i       baseline       historical      2025 Climate Change
#> 3             a.i       baseline       historical      2025 Climate Change
#> 4             a.i       baseline       historical      2025 Climate Change
#> 5             a.i       baseline       historical      2025 Climate Change
#> 6             a.i       baseline       historical      2025 Climate Change
#> 7             a.i       baseline       historical      2025 Climate Change
#> 8             a.i       baseline       historical      2025 Climate Change
#> 9             a.i       baseline       historical      2025 Climate Change
#> 10            a.i       baseline       historical      2025 Climate Change
#> 11            a.i       baseline       historical      2025 Climate Change
#> 12            a.i       baseline       historical      2025 Climate Change
#> 13            a.i       baseline       historical      2025 Climate Change
#> 14            a.i       baseline       historical      2025 Climate Change
#> 15            a.i       baseline       historical      2025 Climate Change
#> 16            a.i       baseline       historical      2025 Climate Change
#> 17            a.i       baseline       historical      2025 Climate Change
#> 18            a.i       baseline       historical      2025 Climate Change
#> 19            a.i       baseline       historical      2025 Climate Change
#> 20            a.i       baseline       historical      2025 Climate Change
#> 21            a.i       baseline       historical      2025 Climate Change
#> 22            a.i       baseline       historical      2025 Climate Change
#> 23            a.i       baseline       historical      2025 Climate Change
#> 24            a.i       baseline       historical      2025 Climate Change
#> 25            a.i       baseline       historical      2025 Climate Change
#> 26            a.i       baseline       historical      2025 Climate Change
#> 27            a.i       baseline       historical      2025 Climate Change
#> 28            a.i       baseline       historical      2025 Climate Change
#> 29            a.i       baseline       historical      2025 Climate Change
#> 30            a.i       baseline       historical      2025 Climate Change
#> 31            a.i       baseline       historical      2025 Climate Change
#> 32            a.i       baseline       historical      2025 Climate Change
#> 33            a.i       baseline       historical      2025 Climate Change
#> 34            a.i       baseline       historical      2025 Climate Change
#> 35            a.i       baseline       historical      2025 Climate Change
#> 36            a.i       baseline       historical      2025 Climate Change
#> 37            a.i       baseline       historical      2025 Climate Change
#> 38            a.i       baseline       historical      2025 Climate Change
#> 39            a.i       baseline       historical      2025 Climate Change
#> 40            a.i       baseline       historical      2025 Climate Change
#> 41            a.i       baseline       historical      2025 Climate Change
#> 42            a.i       baseline       historical      2025 Climate Change
#> 43            a.i       baseline       historical      2025 Climate Change
#> 44            a.i       baseline       historical      2025 Climate Change
#> 45            a.i       baseline       historical      2025 Climate Change
#> 46            a.i       baseline       historical      2025 Climate Change
#> 47            a.i       baseline       historical      2025 Climate Change
#> 48            a.i       baseline       historical      2025 Climate Change
#> 49            a.i       baseline       historical      2025 Climate Change
#> 50            a.i       baseline       historical      2025 Climate Change
#> 51            a.i       baseline       historical      2025 Climate Change
#> 52            a.i       baseline       historical      2025 Climate Change
#> 53            a.i       baseline       historical      2025 Climate Change
#> 54            a.i       baseline       historical      2025 Climate Change
#> 55            a.i       baseline       historical      2025 Climate Change
#> 56            a.i       baseline       historical      2025 Climate Change
#> 57            a.i       baseline       historical      2025 Climate Change
#> 58            a.i       baseline       historical      2025 Climate Change
#> 59            a.i       baseline       historical      2025 Climate Change
#> 60            a.i       baseline       historical      2025 Climate Change
#> 61            a.i       baseline       historical      2025 Climate Change
#> 62            a.i       baseline       historical      2025 Climate Change
#> 63            a.i       baseline       historical      2025 Climate Change
#> 64            a.i       baseline       historical      2025 Climate Change
#> 65            a.i       baseline       historical      2025 Climate Change
#> 66            a.i       baseline       historical      2025 Climate Change
#> 67            a.i       baseline       historical      2025 Climate Change
#> 68            a.i       baseline       historical      2025 Climate Change
#> 69            a.i       baseline       historical      2025 Climate Change
#> 70            a.i       baseline       historical      2025 Climate Change
#> 71            a.i       baseline       historical      2025 Climate Change
#> 72            a.i       baseline       historical      2025 Climate Change
#> 73            a.i       baseline       historical      2025 Climate Change
#> 74            a.i       baseline       historical      2025 Climate Change
#> 75            a.i       baseline       historical      2025 Climate Change
#> 76            a.i       baseline       historical      2025 Climate Change
#> 77            a.i       baseline       historical      2025 Climate Change
#> 78            a.i       baseline       historical      2025 Climate Change
#> 79            a.i       baseline       historical      2025 Climate Change
#> 80            a.i       baseline       historical      2025 Climate Change
#> 81            a.i       baseline       historical      2025 Climate Change
#> 82            a.i       baseline       historical      2025 Climate Change
#> 83            a.i       baseline       historical      2025 Climate Change
#> 84            a.i       baseline       historical      2025 Climate Change
#> 85            a.i       baseline       historical      2025 Climate Change
#> 86            a.i       baseline       historical      2025 Climate Change
#> 87            a.i       baseline       historical      2025 Climate Change
#> 88            a.i       baseline       historical      2025 Climate Change
#> 89            a.i       baseline       historical      2025 Climate Change
#> 90            a.i       baseline       historical      2025 Climate Change
#> 91            a.i       baseline       historical      2025 Climate Change
#> 92            a.i       baseline       historical      2025 Climate Change
#> 93            a.i       baseline       historical      2025 Climate Change
#> 94            a.i       baseline       historical      2025 Climate Change
#> 95            a.i       baseline       historical      2025 Climate Change
#> 96            a.i       baseline       historical      2025 Climate Change
#> 97            a.i       baseline       historical      2025 Climate Change
#> 98            a.i       baseline       historical      2025 Climate Change
#> 99            a.i       baseline       historical      2025 Climate Change
#> 100           a.i       baseline       historical      2025 Climate Change
#> 101           a.i       baseline       historical      2025 Climate Change
#> 102           a.i       baseline       historical      2025 Climate Change
#> 103           a.i       baseline       historical      2025 Climate Change
#> 104           a.i       baseline       historical      2025 Climate Change
#> 105           a.i       baseline       historical      2025 Climate Change
#> 106           a.i       baseline       historical      2025 Climate Change
#> 107           a.i       baseline       historical      2025 Climate Change
#> 108           a.i       baseline       historical      2025 Climate Change
#> 109           a.i       baseline       historical      2025 Climate Change
#> 110           a.i       baseline       historical      2025 Climate Change
#> 111           a.i       baseline       historical      2025 Climate Change
#> 112           a.i       baseline       historical      2025 Climate Change
#> 113           a.i       baseline       historical      2025 Climate Change
#> 114           a.i       baseline       historical      2025 Climate Change
#> 115           a.i       baseline       historical      2025 Climate Change
#> 116           a.i       baseline       historical      2025 Climate Change
#> 117           a.i       baseline       historical      2025 Climate Change
#> 118           a.i       baseline       historical      2025 Climate Change
#> 119           a.i       baseline       historical      2025 Climate Change
#> 120           a.i       baseline       historical      2025 Climate Change
#> 121           a.i       baseline       historical      2025 Climate Change
#> 122           a.i       baseline       historical      2025 Climate Change
#> 123           a.i       baseline       historical      2025 Climate Change
#> 124           a.i       baseline       historical      2025 Climate Change
#> 125           a.i       baseline       historical      2025 Climate Change
#> 126           a.i       baseline       historical      2025 Climate Change
#> 127           a.i       baseline       historical      2025 Climate Change
#> 128           a.i       baseline       historical      2025 Climate Change
#> 129           a.i       baseline       historical      2025 Climate Change
#> 130           a.i       baseline       historical      2025 Climate Change
#> 131           a.i       baseline       historical      2025 Climate Change
#> 132           a.i       baseline       historical      2025 Climate Change
#> 133           a.i       baseline       historical      2025 Climate Change
#> 134           a.i       baseline       historical      2025 Climate Change
#> 135           a.i       baseline       historical      2025 Climate Change
#> 136           a.i       baseline       historical      2025 Climate Change
#> 137           a.i       baseline       historical      2025 Climate Change
#> 138           a.i       baseline       historical      2025 Climate Change
#> 139           a.i       baseline       historical      2025 Climate Change
#> 140           a.i       baseline       historical      2025 Climate Change
#> 141           a.i       baseline       historical      2025 Climate Change
#> 142           a.i       baseline       historical      2025 Climate Change
#>                            taxon_code distance
#> 1                          abies_alba 2.613366
#> 2                 abies_borisii-regis 2.372299
#> 3                   abies_cephalonica 2.746110
#> 4                 abies_cilicica_aggr 2.866308
#> 5                       abies_grandis 2.422703
#> 6             abies_nordmanniana_aggr 2.398858
#> 7                       abies_pinsapo 2.882232
#> 8                       abies_procera 2.491552
#> 9           abietinella_abietina_aggr 2.872582
#> 10               abutilon_theophrasti 3.360137
#> 11                    acacia_dealbata 2.562152
#> 12                     acacia_saligna 2.807740
#> 13             acaena_novae-zelandiae 2.636903
#> 14                 acalypha_virginica 2.935957
#> 15         acantholimon_acerosum_aggr 3.013317
#> 16  acantholimon_caryophyllaceum_aggr 2.961076
#> 17               acantholimon_echinus 2.995270
#> 18               acantholimon_graecum 3.265588
#> 19         acantholimon_kotschyi_aggr 2.946775
#> 20        acantholimon_puberulum_aggr 3.024138
#> 21         acantholimon_ulicinum_aggr 3.316083
#> 22         acantholimon_venestum_aggr 2.985904
#> 23         acantholimon_venustum_aggr 3.014328
#> 24                  acanthus_hirsutus 3.069156
#> 25                acanthus_hungaricus 2.677639
#> 26               acanthus_mollis_aggr 2.587203
#> 27                  acanthus_spinosus 3.172810
#> 28                 acarospora_fuscata 2.811438
#> 29                acer_campestre_aggr 2.420418
#> 30                  acer_cappadocicum 2.358508
#> 31                    acer_granatense 2.539052
#> 32              acer_heldreichii_aggr 2.370870
#> 33                 acer_hyrcanum_aggr 2.425055
#> 34                       acer_lobelii 2.363780
#> 35           acer_monspessulanum_aggr 2.595304
#> 36                       acer_negundo 2.330470
#> 37                     acer_obtusatum 2.436434
#> 38                        acer_opalus 2.594388
#> 39              acer_platanoides_aggr 2.369076
#> 40                acer_pseudoplatanus 2.438824
#> 41                  acer_sempervirens 3.217283
#> 42                     acer_tataricum 2.371090
#> 43                  acer_trautvetteri 2.255806
#> 44              achillea_abrotanoides 3.043506
#> 45         achillea_ageratifolia_aggr 3.129215
#> 46                  achillea_ageratum 2.704550
#> 47             achillea_aleppica_aggr 3.073254
#> 48                   achillea_arabica 2.955008
#> 49             achillea_aspleniifolia 2.530638
#> 50               achillea_atrata_aggr 3.615885
#> 51           achillea_barrelieri_aggr 3.126020
#> 52                 achillea_biserrata 2.514209
#> 53                achillea_chrysocoma 2.891549
#> 54                 achillea_clavennae 3.560382
#> 55                  achillea_clusiana 2.742680
#> 56                achillea_clypeolata 3.048168
#> 57                 achillea_coarctata 3.018662
#> 58                   achillea_collina 2.805515
#> 59                   achillea_cretica 3.248362
#> 60              achillea_crithmifolia 2.940583
#> 61              achillea_distans_aggr 2.589229
#> 62           achillea_erba-rotta_aggr 3.073240
#> 63                   achillea_falcata 3.111104
#> 64                   achillea_fraasii 3.181146
#> 65              achillea_goniocephala 3.035258
#> 66               achillea_grandifolia 2.489764
#> 67               achillea_holosericea 3.035847
#> 68                  achillea_inundata 2.846414
#> 69             achillea_kotschyi_aggr 3.120446
#> 70                  achillea_latiloba 2.609238
#> 71                 achillea_ligustica 2.756869
#> 72                 achillea_lingulata 2.771317
#> 73               achillea_macrophylla 2.971321
#> 74             achillea_maritima_aggr 4.214717
#> 75                 achillea_micrantha 3.114165
#> 76          achillea_millefolium_aggr 2.667700
#> 77                 achillea_multifida 2.785812
#> 78                      achillea_nana 3.087855
#> 79              achillea_nobilis_aggr 2.917040
#> 80                achillea_ochroleuca 3.072673
#> 81                   achillea_odorata 3.035559
#> 82              achillea_oxyloba_aggr 2.913633
#> 83                 achillea_pannonica 2.883180
#> 84                   achillea_phrygia 2.897956
#> 85                 achillea_pratensis 2.458344
#> 86           achillea_pseudopectinata 3.085270
#> 87                  achillea_ptarmica 2.467590
#> 88                 achillea_pyrenaica 2.528515
#> 89                 achillea_roseoalba 3.050308
#> 90               achillea_salicifolia 2.374939
#> 91             achillea_santolinoides 2.991975
#> 92                   achillea_setacea 2.868962
#> 93                achillea_sintenisii 3.083309
#> 94                  achillea_styriaca 2.658690
#> 95               achillea_teretifolia 2.967462
#> 96                 achillea_tomentosa 3.054182
#> 97              achillea_vermicularis 2.928970
#> 98            achillea_virescens_aggr 2.789035
#> 99              achnatherum_bromoides 2.933260
#> 100         achnatherum_calamagrostis 2.976388
#> 101                        acis_rosea 2.926750
#> 102            aconitum_angustifolium 3.584779
#> 103                  aconitum_anthora 2.753088
#> 104            aconitum_burnatii_aggr 2.401925
#> 105                  aconitum_degenii 3.118949
#> 106              aconitum_firmum_aggr 2.858520
#> 107          aconitum_lycoctonum_aggr 2.808252
#> 108          aconitum_moldavicum_aggr 2.439667
#> 109            aconitum_napellus_aggr 2.786598
#> 110                 aconitum_plicatum 2.671988
#> 111                 aconitum_tauricum 2.482358
#> 112                  aconitum_toxicum 2.247057
#> 113          aconitum_variegatum_aggr 2.627078
#> 114                aconogonon_alpinum 2.805559
#> 115                    acorus_calamus 2.411336
#> 116                   actaea_europaea 2.406775
#> 117                    actaea_spicata 2.525564
#> 118      adenocarpus_complicatus_aggr 2.793781
#> 119           adenocarpus_decorticans 2.526866
#> 120            adenocarpus_telonensis 2.858314
#> 121             adenophora_liliifolia 2.598320
#> 122        adenostyles_alliariae_aggr 2.772360
#> 123           adenostyles_alpina_aggr 3.064116
#> 124                adenostyles_glabra 2.424157
#> 125           adenostyles_leucophylla 2.935840
#> 126         adiantum_capillus-veneris 2.500796
#> 127            adonis_aestivalis_aggr 3.455082
#> 128                      adonis_annua 3.255452
#> 129                    adonis_flammea 3.158105
#> 130            adonis_microcarpa_aggr 3.095692
#> 131                  adonis_pyrenaica 2.952490
#> 132                   adonis_vernalis 2.937854
#> 133          adoxa_moschatellina_aggr 2.357367
#> 134               aegilops_biuncialis 3.148300
#> 135                  aegilops_caudata 3.420151
#> 136               aegilops_columnaris 2.967250
#> 137              aegilops_comosa_aggr 3.139801
#> 138               aegilops_cylindrica 2.911630
#> 139               aegilops_geniculata 3.000785
#> 140                 aegilops_neglecta 3.035634
#> 141          aegilops_speltoides_aggr 3.005731
#> 142         aegilops_triuncialis_aggr 2.988595
#>  [ reached 'max' / getOption("max.print") -- omitted 8755 rows ]
```
