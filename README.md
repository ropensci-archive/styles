
<!-- README.md is generated from README.Rmd. Please edit that file -->
styles
======

The goal of styles is to create and apply themes to base plots.

Installation
------------

You can install styles from github with:

``` r
# install.packages("devtools")
devtools::install_github("lizhmartin/styles")
```

Examples
--------

Let's compare default plot arguments to a styles:

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
```

You can preview internal styles:

``` r

# preview internal style
plot_mat <- matrix(1:4, nrow = 2, byrow = FALSE)
layout(plot_mat)
plot_style(better)
```

![](README-unnamed-chunk-2-1.png)

``` r
remove_style()
```

You can create you're own styles:

``` r
blue_stars <- new_style(par = list(pch = 8),
                  graphics = list(plot.xy = list(col = "navyblue")))
style(blue_stars)
plot(mpg ~ wt, data = mtcars)
```

![](README-unnamed-chunk-3-1.png)

Once we have a style we like, we can apply it to all of our plots:

``` r

plot_mat <- matrix(1:4, nrow = 2, byrow = FALSE)
layout(plot_mat)

blue_dot_grey <- new_style(par = list(pch = 20,
                                      cex=1.2,
                                      bty="l",
                                      col.axis = grey(0.4),
                                      col.lab = grey(0.4),
                                      fg = grey(0.4),
                                      mar=c(4,4,1,1)),
                           graphics = list(plot.xy = list(col = "navyblue")))

style(blue_dot_grey)

plot(mpg ~ wt, data = mtcars)
plot(mpg ~ disp, data = mtcars)
plot(mpg ~ hp, data = mtcars)
plot(mpg ~ drat, data = mtcars)
```

![](README-unnamed-chunk-4-1.png)
