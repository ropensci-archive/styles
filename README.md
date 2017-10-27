
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
par(mfrow=c(1,1))
# create a new style:
blue <- new_style(par = list(pch = 16,
                             fg = grey(0.6),
                             col.axis = grey(0.4),
                             col.lab = grey(0.2),
                             las = 1,
                             col.main = grey(0.4),
                             col.sub = grey(0.4),
                             tcl = -0.25,
                             bty="l"),
                  graphics = list(axis = list(hadj = 0.5),
                                  plot.xy = list(col = "navyblue",
                                                 lwd = 2.5,
                                                 cex = 1.1)))
style(blue)
plot(mpg ~ wt, data = mtcars)
```

![](README-example-2.png)

``` r
remove_style()

###
```
