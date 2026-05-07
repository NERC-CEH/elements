# Installation

The Github repository containing the `elements` package
[(https://github.com/NERC-CEH/elements)](https://github.com/NERC-CEH/elements)
includes all files apart from the “./inst/extdata/Models” object
containing all the ENMs as it is above the 100MB limit. Models for the
taxa present in the
[`elements::ExamplePlot`](https://NERC-CEH.github.io/elements/reference/ExamplePlot.md)
are bundled in the “./inst/testdata/TestModels” object, which is present
in the Github repository.

To retrieve the `elements` package including the “Models” object
download the latest version from Zenodo here -
<https://zenodo.org/records/15639307>.

After retrieving the package to install `elements` run:

``` r

install.packages(file.path("path_to_file", "elements_0.8.0.tar.gz"), repos = NULL, type = "source")
```

Downloading and installing the package may take a few minutes.

Note: `elements` has two dependencies, `e1071` and `filehash`, which
must also be installed.
