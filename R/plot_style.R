#' @title Plot Style
#'
#' @description Plots internal styles to show user what they look like
#'
#' @include example_plots.R
#'
#' @export
#'
plot_style <- function(x, y, ...){

  on.exit( {remove_style()} )
  style(x)
  example_plots()

}
