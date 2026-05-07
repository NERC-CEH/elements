# Environmental indicator value data

A dataset containing a combined dataset of Environmental Indicator
Values (EIVs) from Dengler et al (2023), Midolo et al (2023), and Tichý
et al (2023).

## Usage

``` r
VariableData
```

## Format

A data frame with 9406 rows and 27 columns, the definitions of which
are:

- taxon_name:

  The taxon name.

- taxon_code:

  The taxon, see
  [`elements::ModelledTaxaCodes`](https://NERC-CEH.github.io/elements/reference/ModelledTaxaCodes.md).
  Not all modelled taxa have EIV values from the original datasets.

- DF:

  Disturbance frequency (Midolo et al., 2023)

- DF.sd:

  Disturbance frequency standard deviation (Midolo et al., 2023)

- DFH.sd:

  Disturbance frequency herb layer standard deviation (Midolo et al.,
  2023)

- DFh:

  Disturbance frequency herb layer (Midolo et al., 2023)

- DS:

  Disturbance severity (Midolo et al., 2023)

- DS.sd:

  Disturbance severity standard deviation (Midolo et al., 2023)

- DSH.sd:

  Disturbance severity herb layer standard deviation (Midolo et al.,
  2023)

- DSh:

  Disturbance severity herb layer (Midolo et al., 2023)

- GP:

  Grazing pressure (Midolo et al., 2023)

- GP.sd:

  Grazing pressure standard deviation (Midolo et al., 2023)

- L:

  Light (Dengler et al., 2023)

- L.nw:

  Light niche width (Dengler et al., 2023)

- M:

  Moisture (Dengler et al., 2023)

- M.nw:

  Moisture niche width (Dengler et al., 2023)

- MF:

  Mowing frequency (Midolo et al., 2023)

- MF.sd:

  Mowing frequency standard deviation (Midolo et al., 2023)

- N:

  Nitrogen (Dengler et al., 2023)

- N.nw:

  Nitrogen niche width (Dengler et al., 2023)

- R:

  Reaction (Dengler et al., 2023)

- R.nw:

  Reaction niche width (Dengler et al., 2023)

- S:

  Salinity (Tichý et al 2023)

- SD:

  Soil disturbance (Midolo et al., 2023)

- SD.sd:

  Soil disturbance standard deviation (Midolo et al., 2023)

- T:

  Temperature (Dengler et al., 2023)

- T.nw:

  Temperature niche width (Dengler et al., 2023)

## Details

`VariableData`

## References

Marchi, M., Castellanos-Acuña, D., Hamann, A., Wang, T., Ray, D.,
Menzel, A., 2020. ClimateEU, scale-free climate normals, historical time
series, and future projections for Europe. Sci Data 7, 428.
https://doi.org/10.1038/s41597-020-00763-0Dengler, J., Jansen, F.,
Chusova, O., Hüllbusch, E., Nobis, M.P., Meerbeek, K.V., Axmanová, I.,
Bruun, H.H., Chytrý, M., Guarino, R., Karrer, G., Moeys, K., Raus, T.,
Steinbauer, M.J., Tichý, L., Tyler, T., Batsatsashvili, K.,
Bita-Nicolae, C., Didukh, Y., Diekmann, M., Englisch, T.,
Fernández-Pascual, E., Frank, D., Graf, U., Hájek, M., Jelaska, S.D.,
Jiménez-Alfaro, B., Julve, P., Nakhutsrishvili, G., Ozinga, W.A.,
Ruprecht, E.-K., Šilc, U., Theurillat, J.-P., Gillet, F., 2023.
Ecological Indicator Values for Europe (EIVE) 1.0. Vegetation
Classification and Survey 4, 7–29.
https://doi.org/10.3897/VCS.98324Midolo, G., Herben, T., Axmanová, I.,
Marcenò, C., Pätsch, R., Bruelheide, H., Karger, D.N., Aćić, S.,
Bergamini, A., Bergmeier, E., Biurrun, I., Bonari, G., Čarni, A.,
Chiarucci, A., De Sanctis, M., Demina, O., Dengler, J., Dziuba, T.,
Fanelli, G., Garbolino, E., Giusso del Galdo, G., Goral, F., Güler, B.,
Hinojos-Mendoza, G., Jansen, F., Jiménez-Alfaro, B., Lengyel, A.,
Lenoir, J., Pérez-Haase, A., Pielech, R., Prokhorov, V., Rašomavičius,
V., Ruprecht, E., Rūsiņa, S., Šilc, U., Škvorc, Ž., Stančić, Z.,
Tatarenko, I., Chytrý, M., 2023. Disturbance indicator values for
European plants. Global Ecology and Biogeography 32, 24–34.
https://doi.org/10.1111/geb.13603Tichý, L., Axmanová, I., Dengler, J.,
Guarino, R., Jansen, F., Midolo, G., Nobis, M.P., Van Meerbeek, K.,
Aćić, S., Attorre, F., Bergmeier, E., Biurrun, I., Bonari, G.,
Bruelheide, H., Campos, J.A., Čarni, A., Chiarucci, A., Ćuk, M.,
Ćušterevska, R., Didukh, Y., Dítě, D., Dítě, Z., Dziuba, T., Fanelli,
G., Fernández-Pascual, E., Garbolino, E., Gavilán, R.G., Gégout, J.-C.,
Graf, U., Güler, B., Hájek, M., Hennekens, S.M., Jandt, U., Jašková, A.,
Jiménez-Alfaro, B., Julve, P., Kambach, S., Karger, D.N., Karrer, G.,
Kavgacı, A., Knollová, I., Kuzemko, A., Küzmič, F., Landucci, F.,
Lengyel, A., Lenoir, J., Marcenò, C., Moeslund, J.E., Novák, P.,
Pérez-Haase, A., Peterka, T., Pielech, R., Pignatti, A., Rašomavičius,
V., Rūsiņa, S., Saatkamp, A., Šilc, U., Škvorc, Ž., Theurillat, J.-P.,
Wohlgemuth, T., Chytrý, M., 2023. Ellenberg-type indicator values for
European vascular plant species. Journal of Vegetation Science 34,
e13168. https://doi.org/10.1111/jvs.13168
