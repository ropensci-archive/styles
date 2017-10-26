#' @title Example Plots
#'
#' @description Plots four plots (hist, bar, dot, and box) to demonstrate style.
#'
#' @export
#'
example_plots <- function () {

  with(mtcars, hist(qsec))

  plot(mpg ~ wt, data = mtcars)

  tab <- tapply(mtcars$qsec, paste(mtcars$cyl, "cyl"), mean)
  barplot(tab, ylab = "qsec")

  boxplot(qsec ~ paste(mtcars$gear, "gear"),
          data = mtcars,
          ylab = "qsec")

}
