# elements

`elements` is a R package containing correlative, realised Ecological
Niche Models (ENMs) for the most prevalent vascular plants, bryophytes,
and terricolous lichens in the European Vegetation Archive (EVA) (Chytrý
et al., 2016).

The code used to produce the models is available here
<https://github.com/NERC-CEH/elementsAnalysis>.

## Methods

The ENMs adhere to Hutchinsonian conceptualisation of the ecological
niche as an n-dimensional hypervolume (Hutchinson, 1957). The
environmental variables forming the dimensions of each hypervolume
consist of:

- Seven unweighted, plot-mean Ecological Indicator Values (EIVs):
  - **M** - Soil Moisture¹
  - **R** - Reaction¹
  - **N** - Soil Nitrogen¹
  - **L** - Light¹
  - **GP** - Grazing Pressure²
  - **SD** - Soil Disturbance²
  - **S** - Salinity³
- Four bioclimatic variables:
  - **tmin_wt** - Minimum Winter Temperature⁴
  - **tmax_sm** - Maximum Summer Temperature⁴
  - **prec_wt** - Winter Precipitation⁴
  - **prec_sm** - Summer Precipitation⁴

Support Vector Machine (SVM) models, which form a hyperplane between the
presence and absence hypervolumes, were trained and tested using using
the `mlr3` ecosystem of R packages (Lang et al., 2019). The raw `e1071`
(Meyer et al., 2024) SVM models are bundled in `elements`.

For more information please see Marshall et al (in prep).

------------------------------------------------------------------------

¹(Dengler et al., 2023), ²(Midolo et al., 2023), ³(Tichy et al., 2023),
⁴(Marchi et al., 2020)

## Models

At present there are 8897 ENMs currently included in `elements`.

## References

Chytrý, M., Hennekens, S.M., Jiménez-Alfaro, B., Knollová, I., Dengler,
J., Jansen, F., Landucci, F., Schaminée, J.H.J., Aćić, S., Agrillo, E.,
Ambarlı, D., Angelini, P., Apostolova, I., Attorre, F., Berg, C.,
Bergmeier, E., Biurrun, I., Botta-Dukát, Z., Brisse, H., Campos, J.A.,
Carlón, L., Čarni, A., Casella, L., Csiky, J., Ćušterevska, R., Dajić
Stevanović, Z., Danihelka, J., De Bie, E., de Ruffray, P., De Sanctis,
M., Dickoré, W.B., Dimopoulos, P., Dubyna, D., Dziuba, T., Ejrnæs, R.,
Ermakov, N., Ewald, J., Fanelli, G., Fernández-González, F.,
FitzPatrick, Ú., Font, X., García-Mijangos, I., Gavilán, R.G., Golub,
V., Guarino, R., Haveman, R., Indreica, A., Işık Gürsoy, D., Jandt, U.,
Janssen, J.A.M., Jiroušek, M., Kącki, Z., Kavgacı, A., Kleikamp, M.,
Kolomiychuk, V., Krstivojević Ćuk, M., Krstonošić, D., Kuzemko, A.,
Lenoir, J., Lysenko, T., Marcenò, C., Martynenko, V., Michalcová, D.,
Moeslund, J.E., Onyshchenko, V., Pedashenko, H., Pérez-Haase, A.,
Peterka, T., Prokhorov, V., Rašomavičius, V., Rodríguez-Rojo, M.P.,
Rodwell, J.S., Rogova, T., Ruprecht, E., Rūsiņa, S., Seidler, G., Šibík,
J., Šilc, U., Škvorc, Ž., Sopotlieva, D., Stančić, Z., Svenning, J.-C.,
Swacha, G., Tsiripidis, I., Turtureanu, P.D., Uğurlu, E., Uogintas, D.,
Valachovič, M., Vashenyak, Y., Vassilev, K., Venanzoni, R., Virtanen,
R., Weekes, L., Willner, W., Wohlgemuth, T., Yamalov, S., 2016. European
Vegetation Archive (EVA): an integrated database of European vegetation
plots. Applied Vegetation Science 19, 173–180.
<https://doi.org/10.1111/avsc.12191>

Dengler, J., Jansen, F., Chusova, O., Hüllbusch, E., Nobis, M.P.,
Meerbeek, K.V., Axmanová, I., Bruun, H.H., Chytrý, M., Guarino, R.,
Karrer, G., Moeys, K., Raus, T., Steinbauer, M.J., Tichý, L., Tyler, T.,
Batsatsashvili, K., Bita-Nicolae, C., Didukh, Y., Diekmann, M.,
Englisch, T., Fernández-Pascual, E., Frank, D., Graf, U., Hájek, M.,
Jelaska, S.D., Jiménez-Alfaro, B., Julve, P., Nakhutsrishvili, G.,
Ozinga, W.A., Ruprecht, E.-K., Šilc, U., Theurillat, J.-P., Gillet, F.,
2023. Ecological Indicator Values for Europe (EIVE) 1.0. Vegetation
Classification and Survey 4, 7–29. <https://doi.org/10.3897/VCS.98324>

Hutchinson, G.E., 1957. Concluding Remarks. Cold Spring Harbor Symposia
on Quantitative Biology 22, 415–427.
<https://doi.org/10.1101/SQB.1957.022.01.039>

Lang, M., Binder, M., Richter, J., Schratz, P., Pfisterer, F., Coors,
S., Au, Q., Casalicchio, G., Kotthoff, L., Bischl, B., 2019. mlr3: A
modern object-oriented machine learning framework in R. Journal of Open
Source Software 4, 1903. <https://doi.org/10.21105/joss.01903>

Marchi, M., Castellanos-Acuña, D., Hamann, A., Wang, T., Ray, D.,
Menzel, A., 2020. ClimateEU, scale-free climate normals, historical time
series, and future projections for Europe. Sci Data 7, 428.
<https://doi.org/10.1038/s41597-020-00763-0>

Meyer, D., Dimitriadou, E., Hornik, K., Weingessel, A., Leisch, F.,
2024. e1071: Misc Functions of the Department of Statistics, Probability
Theory Group (Formerly: E1071), TU Wien.
<https://doi.org/10.32614/CRAN.package.e1071>

Midolo, G., Herben, T., Axmanová, I., Marcenò, C., Pätsch, R.,
Bruelheide, H., Karger, D.N., Aćić, S., Bergamini, A., Bergmeier, E.,
Biurrun, I., Bonari, G., Čarni, A., Chiarucci, A., De Sanctis, M.,
Demina, O., Dengler, J., Dziuba, T., Fanelli, G., Garbolino, E., Giusso
del Galdo, G., Goral, F., Güler, B., Hinojos-Mendoza, G., Jansen, F.,
Jiménez-Alfaro, B., Lengyel, A., Lenoir, J., Pérez-Haase, A., Pielech,
R., Prokhorov, V., Rašomavičius, V., Ruprecht, E., Rūsiņa, S., Šilc, U.,
Škvorc, Ž., Stančić, Z., Tatarenko, I., Chytrý, M., 2023. Disturbance
indicator values for European plants. Global Ecology and Biogeography
32, 24–34. <https://doi.org/10.1111/geb.13603>

Tichý, L., Axmanová, I., Dengler, J., Guarino, R., Jansen, F., Midolo,
G., Nobis, M.P., Van Meerbeek, K., Aćić, S., Attorre, F., Bergmeier, E.,
Biurrun, I., Bonari, G., Bruelheide, H., Campos, J.A., Čarni, A.,
Chiarucci, A., Ćuk, M., Ćušterevska, R., Didukh, Y., Dítě, D., Dítě, Z.,
Dziuba, T., Fanelli, G., Fernández-Pascual, E., Garbolino, E., Gavilán,
R.G., Gégout, J.-C., Graf, U., Güler, B., Hájek, M., Hennekens, S.M.,
Jandt, U., Jašková, A., Jiménez-Alfaro, B., Julve, P., Kambach, S.,
Karger, D.N., Karrer, G., Kavgacı, A., Knollová, I., Kuzemko, A.,
Küzmič, F., Landucci, F., Lengyel, A., Lenoir, J., Marcenò, C.,
Moeslund, J.E., Novák, P., Pérez-Haase, A., Peterka, T., Pielech, R.,
Pignatti, A., Rašomavičius, V., Rūsiņa, S., Saatkamp, A., Šilc, U.,
Škvorc, Ž., Theurillat, J.-P., Wohlgemuth, T., Chytrý, M., 2023.
Ellenberg-type indicator values for European vascular plant species.
Journal of Vegetation Science 34, e13168.
<https://doi.org/10.1111/jvs.13168>
