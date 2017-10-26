#' @title Plot All
#'
#' @description Plot four plots in layout to test style.
#'
#' @export
#'
#'
plot_all <- function () {

  with(mtcars, hist(qsec))

  plot(mpg ~ wt, data = mtcars)

  tab <- tapply(mtcars$qsec, paste(mtcars$cyl, "cyl"), mean)
  barplot(tab, ylab = "qsec")

  boxplot(qsec ~ paste(mtcars$gear, "gear"),
          data = mtcars,
          ylab = "qsec")

}
