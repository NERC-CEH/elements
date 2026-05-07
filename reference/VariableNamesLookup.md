# Environmental variable names and codes

A dataset containing a lookup for the Ecological Indicator Value (EIV)
and bioclimatic variable codes used throughout the `elements` package
and full variable namesnames.

## Usage

``` r
VariableNamesLookup
```

## Format

A data frame with 29 rows and 5 columns, the definitions of which are:

- raw_name:

  The raw name of the variable as present in the parent dataset.

- variable_code:

  The variable code, used throughout the `elements` R package.

- variable_name:

  A 'tidy' variable name without spaces.

- variable_plot_name:

  A 'tidy' variable name with spaces.

- model_var:

  A boolean indicating whether the variable was included as a predictor.

## Details

`VariableNamesLookup`
