# Model performance measures

A dataset containing a number of performance measures for each model.

## Usage

``` r
PerformanceMeasures
```

## Format

A data frame with 8897 rows and 9 columns, the definitions of which are:

- taxon_code:

  The taxon, see
  [`elements::ModelledTaxaCodes`](https://NERC-CEH.github.io/elements/reference/ModelledTaxaCodes.md).

- Holdout.PrecisionRecallAreaUnderCurve:

  The Precision-Recall Area Under the Curve (PRAUC), calculated using
  the random holdout sample test data.

- Holdout.Precision:

  The Precision, calculated using the random holdout sample test data.

- Holdout.Recall:

  The Recall, calculated using the random holdout sample test data.

- Holdout.Sensitivity:

  The Sensitivity, calculated using the random holdout sample test data.

- Holdout.Specificity:

  The Specificity, calculated using the random holdout sample test data.

- Holdout.BalancedAccuracy:

  The Balanced Accuracy, calculated using the random holdout sample test
  data.

- Holdout.TrueSkillStatistic:

  The True Skill Statistic, calculated using the random holdout sample
  test data.

- STCV.BalancedAccuracy:

  The Balanced Accuracy, calculated during the modelling fitting process
  which used spatio-temporal 10-fold cross-validation.

## Details

`PerformanceMeasures`
