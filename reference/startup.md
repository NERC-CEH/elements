# Initiliase a connection to the filehash database containing the Ecological Niche Models (ENMs)

Initiliase a connection to the filehash database containing the
Ecological Niche Models (ENMs)

## Usage

``` r
startup(models = NULL)
```

## Arguments

- models:

  One of "all", "test", or NULL, indicating whether the complete set of
  models should be loaded, or the test set of models. NULL by default,
  which loads all models.

## Value

A connection to the filehash database containing the ENMs in an
environment named elementsEnv within the parent environment.

## Examples

``` r
elements::startup()
#> elements startup completed.
```
