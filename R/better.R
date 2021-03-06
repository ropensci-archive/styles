#' @title Better
#'
#' @description Internal style
#'
#' @include new_style.R
#'
#' @export
#'
better <- new_style(par = list(pch = 16,
                             fg = grey(0.6),
                             col.axis = grey(0.4),
                             col.lab = grey(0.2),
                             las = 1,
                             col.main = grey(0.4),
                             col.sub = grey(0.4),
                             tcl = -0.25,
                             bty="l"),
                  graphics = list(axis = list(hadj = 0.5),
                                  hist.default = list(col = "navyblue",
                                                      border = "white",
                                                      main = "",
                                                      ylab = "count"),
                                  plot.xy = list(col = "navyblue",
                                                 lwd = 2.5,
                                                 cex = 1.1),
                                  barplot.default = list(col = "navyblue",
                                                         border = NA,
                                                         space = 0.3),
                                  boxplot.default = list(col = scales::alpha("navyblue", 0.5),
                                                         border = "navyblue",
                                                         pars = list(boxwex = 0.8,
                                                                     staplewex = 0.5,
                                                                     outwex = 0.5,
                                                                     cex = 1,
                                                                     whisklty = "solid")),
                                  title = list(line = 2)))
