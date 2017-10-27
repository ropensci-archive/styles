#' @title New Style.
#'
#' @description Exports the new style
#'
#' @include check_style.R
#'
#' @export
#'
#'
new_style <- function (..., inherit = list()) {
  list <- list(...)
  check_style(list)
  inherit[names(list)] <- list
  class(inherit)<-c("style", class(inherit))
  inherit
}
