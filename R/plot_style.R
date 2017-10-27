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
  plot_mat <- matrix(1:4, nrow = 2, byrow = FALSE)
  layout(plot_mat)
  style(x)
  example_plots()

}
