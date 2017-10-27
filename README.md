
<!-- README.md is generated from README.Rmd. Please edit that file -->
styles
======

The goal of styles is to create and apply ggplot-style themes to base plots.

Installation
------------

You can install styles from github with:

``` r
# install.packages("devtools")
devtools::install_github("lizhmartin/styles")
```

Example
-------

This is a basic example which shows you how to solve a common problem:

``` r
library(styles)

# plot with internal style
plot_mat <- matrix(1:8, nrow = 2, byrow = FALSE)
layout(plot_mat)

example_plots()

style(better)
example_plots()
```

![](README-example-1.png)

``` r

remove_style()

# create a new style:
###
```
