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
#> 1.1             a.i       baseline       historical      2025 Climate Change
#> 1.2             a.i       baseline       historical      2025 Climate Change
#> 1.3             a.i       baseline       historical      2025 Climate Change
#> 1.4             a.i       baseline       historical      2025 Climate Change
#> 1.5             a.i       baseline       historical      2025 Climate Change
#> 1.6             a.i       baseline       historical      2025 Climate Change
#> 1.7             a.i       baseline       historical      2025 Climate Change
#> 1.8             a.i       baseline       historical      2025 Climate Change
#> 1.9             a.i       baseline       historical      2025 Climate Change
#> 1.10            a.i       baseline       historical      2025 Climate Change
#> 1.11            a.i       baseline       historical      2025 Climate Change
#> 1.12            a.i       baseline       historical      2025 Climate Change
#> 1.13            a.i       baseline       historical      2025 Climate Change
#> 1.14            a.i       baseline       historical      2025 Climate Change
#> 1.15            a.i       baseline       historical      2025 Climate Change
#> 1.16            a.i       baseline       historical      2025 Climate Change
#> 1.17            a.i       baseline       historical      2025 Climate Change
#> 1.18            a.i       baseline       historical      2025 Climate Change
#> 1.19            a.i       baseline       historical      2025 Climate Change
#> 1.20            a.i       baseline       historical      2025 Climate Change
#> 1.21            a.i       baseline       historical      2025 Climate Change
#> 1.22            a.i       baseline       historical      2025 Climate Change
#> 1.23            a.i       baseline       historical      2025 Climate Change
#> 1.24            a.i       baseline       historical      2025 Climate Change
#> 1.25            a.i       baseline       historical      2025 Climate Change
#> 1.26            a.i       baseline       historical      2025 Climate Change
#> 1.27            a.i       baseline       historical      2025 Climate Change
#> 1.28            a.i       baseline       historical      2025 Climate Change
#> 1.29            a.i       baseline       historical      2025 Climate Change
#> 1.30            a.i       baseline       historical      2025 Climate Change
#> 1.31            a.i       baseline       historical      2025 Climate Change
#> 1.32            a.i       baseline       historical      2025 Climate Change
#> 1.33            a.i       baseline       historical      2025 Climate Change
#> 1.34            a.i       baseline       historical      2025 Climate Change
#> 1.35            a.i       baseline       historical      2025 Climate Change
#> 1.36            a.i       baseline       historical      2025 Climate Change
#> 1.37            a.i       baseline       historical      2025 Climate Change
#> 1.38            a.i       baseline       historical      2025 Climate Change
#> 1.39            a.i       baseline       historical      2025 Climate Change
#> 1.40            a.i       baseline       historical      2025 Climate Change
#> 1.41            a.i       baseline       historical      2025 Climate Change
#> 1.42            a.i       baseline       historical      2025 Climate Change
#> 1.43            a.i       baseline       historical      2025 Climate Change
#> 1.44            a.i       baseline       historical      2025 Climate Change
#> 1.45            a.i       baseline       historical      2025 Climate Change
#> 1.46            a.i       baseline       historical      2025 Climate Change
#> 1.47            a.i       baseline       historical      2025 Climate Change
#> 1.48            a.i       baseline       historical      2025 Climate Change
#> 1.49            a.i       baseline       historical      2025 Climate Change
#> 1.50            a.i       baseline       historical      2025 Climate Change
#> 1.51            a.i       baseline       historical      2025 Climate Change
#> 1.52            a.i       baseline       historical      2025 Climate Change
#> 1.53            a.i       baseline       historical      2025 Climate Change
#> 1.54            a.i       baseline       historical      2025 Climate Change
#> 1.55            a.i       baseline       historical      2025 Climate Change
#> 1.56            a.i       baseline       historical      2025 Climate Change
#> 1.57            a.i       baseline       historical      2025 Climate Change
#> 1.58            a.i       baseline       historical      2025 Climate Change
#> 1.59            a.i       baseline       historical      2025 Climate Change
#> 1.60            a.i       baseline       historical      2025 Climate Change
#> 1.61            a.i       baseline       historical      2025 Climate Change
#> 1.62            a.i       baseline       historical      2025 Climate Change
#> 1.63            a.i       baseline       historical      2025 Climate Change
#> 1.64            a.i       baseline       historical      2025 Climate Change
#> 1.65            a.i       baseline       historical      2025 Climate Change
#> 1.66            a.i       baseline       historical      2025 Climate Change
#> 1.67            a.i       baseline       historical      2025 Climate Change
#> 1.68            a.i       baseline       historical      2025 Climate Change
#> 1.69            a.i       baseline       historical      2025 Climate Change
#> 1.70            a.i       baseline       historical      2025 Climate Change
#> 1.71            a.i       baseline       historical      2025 Climate Change
#> 1.72            a.i       baseline       historical      2025 Climate Change
#> 1.73            a.i       baseline       historical      2025 Climate Change
#> 1.74            a.i       baseline       historical      2025 Climate Change
#> 1.75            a.i       baseline       historical      2025 Climate Change
#> 1.76            a.i       baseline       historical      2025 Climate Change
#> 1.77            a.i       baseline       historical      2025 Climate Change
#> 1.78            a.i       baseline       historical      2025 Climate Change
#> 1.79            a.i       baseline       historical      2025 Climate Change
#> 1.80            a.i       baseline       historical      2025 Climate Change
#> 1.81            a.i       baseline       historical      2025 Climate Change
#> 1.82            a.i       baseline       historical      2025 Climate Change
#> 1.83            a.i       baseline       historical      2025 Climate Change
#> 1.84            a.i       baseline       historical      2025 Climate Change
#> 1.85            a.i       baseline       historical      2025 Climate Change
#> 1.86            a.i       baseline       historical      2025 Climate Change
#> 1.87            a.i       baseline       historical      2025 Climate Change
#> 1.88            a.i       baseline       historical      2025 Climate Change
#> 1.89            a.i       baseline       historical      2025 Climate Change
#> 1.90            a.i       baseline       historical      2025 Climate Change
#> 1.91            a.i       baseline       historical      2025 Climate Change
#> 1.92            a.i       baseline       historical      2025 Climate Change
#> 1.93            a.i       baseline       historical      2025 Climate Change
#> 1.94            a.i       baseline       historical      2025 Climate Change
#> 1.95            a.i       baseline       historical      2025 Climate Change
#> 1.96            a.i       baseline       historical      2025 Climate Change
#> 1.97            a.i       baseline       historical      2025 Climate Change
#> 1.98            a.i       baseline       historical      2025 Climate Change
#> 1.99            a.i       baseline       historical      2025 Climate Change
#> 1.100           a.i       baseline       historical      2025 Climate Change
#> 1.101           a.i       baseline       historical      2025 Climate Change
#> 1.102           a.i       baseline       historical      2025 Climate Change
#> 1.103           a.i       baseline       historical      2025 Climate Change
#> 1.104           a.i       baseline       historical      2025 Climate Change
#> 1.105           a.i       baseline       historical      2025 Climate Change
#> 1.106           a.i       baseline       historical      2025 Climate Change
#> 1.107           a.i       baseline       historical      2025 Climate Change
#> 1.108           a.i       baseline       historical      2025 Climate Change
#> 1.109           a.i       baseline       historical      2025 Climate Change
#> 1.110           a.i       baseline       historical      2025 Climate Change
#> 1.111           a.i       baseline       historical      2025 Climate Change
#> 1.112           a.i       baseline       historical      2025 Climate Change
#> 1.113           a.i       baseline       historical      2025 Climate Change
#> 1.114           a.i       baseline       historical      2025 Climate Change
#> 1.115           a.i       baseline       historical      2025 Climate Change
#> 1.116           a.i       baseline       historical      2025 Climate Change
#> 1.117           a.i       baseline       historical      2025 Climate Change
#> 1.118           a.i       baseline       historical      2025 Climate Change
#> 1.119           a.i       baseline       historical      2025 Climate Change
#> 1.120           a.i       baseline       historical      2025 Climate Change
#> 1.121           a.i       baseline       historical      2025 Climate Change
#> 1.122           a.i       baseline       historical      2025 Climate Change
#> 1.123           a.i       baseline       historical      2025 Climate Change
#> 1.124           a.i       baseline       historical      2025 Climate Change
#> 1.125           a.i       baseline       historical      2025 Climate Change
#> 1.126           a.i       baseline       historical      2025 Climate Change
#> 1.127           a.i       baseline       historical      2025 Climate Change
#> 1.128           a.i       baseline       historical      2025 Climate Change
#> 1.129           a.i       baseline       historical      2025 Climate Change
#> 1.130           a.i       baseline       historical      2025 Climate Change
#> 1.131           a.i       baseline       historical      2025 Climate Change
#> 1.132           a.i       baseline       historical      2025 Climate Change
#> 1.133           a.i       baseline       historical      2025 Climate Change
#> 1.134           a.i       baseline       historical      2025 Climate Change
#> 1.135           a.i       baseline       historical      2025 Climate Change
#> 1.136           a.i       baseline       historical      2025 Climate Change
#> 1.137           a.i       baseline       historical      2025 Climate Change
#> 1.138           a.i       baseline       historical      2025 Climate Change
#> 1.139           a.i       baseline       historical      2025 Climate Change
#> 1.140           a.i       baseline       historical      2025 Climate Change
#> 1.141           a.i       baseline       historical      2025 Climate Change
#> 1.142           a.i       baseline       historical      2025 Climate Change
#>                              taxon_code distance
#> 1.1                          abies_alba 2.613366
#> 1.2                 abies_borisii-regis 2.372299
#> 1.3                   abies_cephalonica 2.746110
#> 1.4                 abies_cilicica_aggr 2.866308
#> 1.5                       abies_grandis 2.422703
#> 1.6             abies_nordmanniana_aggr 2.398858
#> 1.7                       abies_pinsapo 2.882232
#> 1.8                       abies_procera 2.491552
#> 1.9           abietinella_abietina_aggr 2.872582
#> 1.10               abutilon_theophrasti 3.360137
#> 1.11                    acacia_dealbata 2.562152
#> 1.12                     acacia_saligna 2.807740
#> 1.13             acaena_novae-zelandiae 2.636903
#> 1.14                 acalypha_virginica 2.935957
#> 1.15         acantholimon_acerosum_aggr 3.013317
#> 1.16  acantholimon_caryophyllaceum_aggr 2.961076
#> 1.17               acantholimon_echinus 2.995270
#> 1.18               acantholimon_graecum 3.265588
#> 1.19         acantholimon_kotschyi_aggr 2.946775
#> 1.20        acantholimon_puberulum_aggr 3.024138
#> 1.21         acantholimon_ulicinum_aggr 3.316083
#> 1.22         acantholimon_venestum_aggr 2.985904
#> 1.23         acantholimon_venustum_aggr 3.014328
#> 1.24                  acanthus_hirsutus 3.069156
#> 1.25                acanthus_hungaricus 2.677639
#> 1.26               acanthus_mollis_aggr 2.587203
#> 1.27                  acanthus_spinosus 3.172810
#> 1.28                 acarospora_fuscata 2.811438
#> 1.29                acer_campestre_aggr 2.420418
#> 1.30                  acer_cappadocicum 2.358508
#> 1.31                    acer_granatense 2.539052
#> 1.32              acer_heldreichii_aggr 2.370870
#> 1.33                 acer_hyrcanum_aggr 2.425055
#> 1.34                       acer_lobelii 2.363780
#> 1.35           acer_monspessulanum_aggr 2.595304
#> 1.36                       acer_negundo 2.330470
#> 1.37                     acer_obtusatum 2.436434
#> 1.38                        acer_opalus 2.594388
#> 1.39              acer_platanoides_aggr 2.369076
#> 1.40                acer_pseudoplatanus 2.438824
#> 1.41                  acer_sempervirens 3.217283
#> 1.42                     acer_tataricum 2.371090
#> 1.43                  acer_trautvetteri 2.255806
#> 1.44              achillea_abrotanoides 3.043506
#> 1.45         achillea_ageratifolia_aggr 3.129215
#> 1.46                  achillea_ageratum 2.704550
#> 1.47             achillea_aleppica_aggr 3.073254
#> 1.48                   achillea_arabica 2.955008
#> 1.49             achillea_aspleniifolia 2.530638
#> 1.50               achillea_atrata_aggr 3.615885
#> 1.51           achillea_barrelieri_aggr 3.126020
#> 1.52                 achillea_biserrata 2.514209
#> 1.53                achillea_chrysocoma 2.891549
#> 1.54                 achillea_clavennae 3.560382
#> 1.55                  achillea_clusiana 2.742680
#> 1.56                achillea_clypeolata 3.048168
#> 1.57                 achillea_coarctata 3.018662
#> 1.58                   achillea_collina 2.805515
#> 1.59                   achillea_cretica 3.248362
#> 1.60              achillea_crithmifolia 2.940583
#> 1.61              achillea_distans_aggr 2.589229
#> 1.62           achillea_erba-rotta_aggr 3.073240
#> 1.63                   achillea_falcata 3.111104
#> 1.64                   achillea_fraasii 3.181146
#> 1.65              achillea_goniocephala 3.035258
#> 1.66               achillea_grandifolia 2.489764
#> 1.67               achillea_holosericea 3.035847
#> 1.68                  achillea_inundata 2.846414
#> 1.69             achillea_kotschyi_aggr 3.120446
#> 1.70                  achillea_latiloba 2.609238
#> 1.71                 achillea_ligustica 2.756869
#> 1.72                 achillea_lingulata 2.771317
#> 1.73               achillea_macrophylla 2.971321
#> 1.74             achillea_maritima_aggr 4.214717
#> 1.75                 achillea_micrantha 3.114165
#> 1.76          achillea_millefolium_aggr 2.667700
#> 1.77                 achillea_multifida 2.785812
#> 1.78                      achillea_nana 3.087855
#> 1.79              achillea_nobilis_aggr 2.917040
#> 1.80                achillea_ochroleuca 3.072673
#> 1.81                   achillea_odorata 3.035559
#> 1.82              achillea_oxyloba_aggr 2.913633
#> 1.83                 achillea_pannonica 2.883180
#> 1.84                   achillea_phrygia 2.897956
#> 1.85                 achillea_pratensis 2.458344
#> 1.86           achillea_pseudopectinata 3.085270
#> 1.87                  achillea_ptarmica 2.467590
#> 1.88                 achillea_pyrenaica 2.528515
#> 1.89                 achillea_roseoalba 3.050308
#> 1.90               achillea_salicifolia 2.374939
#> 1.91             achillea_santolinoides 2.991975
#> 1.92                   achillea_setacea 2.868962
#> 1.93                achillea_sintenisii 3.083309
#> 1.94                  achillea_styriaca 2.658690
#> 1.95               achillea_teretifolia 2.967462
#> 1.96                 achillea_tomentosa 3.054182
#> 1.97              achillea_vermicularis 2.928970
#> 1.98            achillea_virescens_aggr 2.789035
#> 1.99              achnatherum_bromoides 2.933260
#> 1.100         achnatherum_calamagrostis 2.976388
#> 1.101                        acis_rosea 2.926750
#> 1.102            aconitum_angustifolium 3.584779
#> 1.103                  aconitum_anthora 2.753088
#> 1.104            aconitum_burnatii_aggr 2.401925
#> 1.105                  aconitum_degenii 3.118949
#> 1.106              aconitum_firmum_aggr 2.858520
#> 1.107          aconitum_lycoctonum_aggr 2.808252
#> 1.108          aconitum_moldavicum_aggr 2.439667
#> 1.109            aconitum_napellus_aggr 2.786598
#> 1.110                 aconitum_plicatum 2.671988
#> 1.111                 aconitum_tauricum 2.482358
#> 1.112                  aconitum_toxicum 2.247057
#> 1.113          aconitum_variegatum_aggr 2.627078
#> 1.114                aconogonon_alpinum 2.805559
#> 1.115                    acorus_calamus 2.411336
#> 1.116                   actaea_europaea 2.406775
#> 1.117                    actaea_spicata 2.525564
#> 1.118      adenocarpus_complicatus_aggr 2.793781
#> 1.119           adenocarpus_decorticans 2.526866
#> 1.120            adenocarpus_telonensis 2.858314
#> 1.121             adenophora_liliifolia 2.598320
#> 1.122        adenostyles_alliariae_aggr 2.772360
#> 1.123           adenostyles_alpina_aggr 3.064116
#> 1.124                adenostyles_glabra 2.424157
#> 1.125           adenostyles_leucophylla 2.935840
#> 1.126         adiantum_capillus-veneris 2.500796
#> 1.127            adonis_aestivalis_aggr 3.455082
#> 1.128                      adonis_annua 3.255452
#> 1.129                    adonis_flammea 3.158105
#> 1.130            adonis_microcarpa_aggr 3.095692
#> 1.131                  adonis_pyrenaica 2.952490
#> 1.132                   adonis_vernalis 2.937854
#> 1.133          adoxa_moschatellina_aggr 2.357367
#> 1.134               aegilops_biuncialis 3.148300
#> 1.135                  aegilops_caudata 3.420151
#> 1.136               aegilops_columnaris 2.967250
#> 1.137              aegilops_comosa_aggr 3.139801
#> 1.138               aegilops_cylindrica 2.911630
#> 1.139               aegilops_geniculata 3.000785
#> 1.140                 aegilops_neglecta 3.035634
#> 1.141          aegilops_speltoides_aggr 3.005731
#> 1.142         aegilops_triuncialis_aggr 2.988595
#>  [ reached 'max' / getOption("max.print") -- omitted 426914 rows ]
```
