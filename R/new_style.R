#' @title New Style.
#'
#' @description Exports the new style
#'
#' @export
#'
#'
new_style <- function (..., inherit = list()) {
  list <- list(...)
  check_style(list)
  inherit[names(list)] <- list
  inherit
}