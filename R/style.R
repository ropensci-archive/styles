#' @title Style.
#'
#' @description Create new style.
#'
#' @export
#'
#'
style <- function (style) {
  check_style()
  remove_style()
  .cache$current_style <- style
  get_old_par(style)
  par(style$par)
  apply_defaults(style)
  add_shims()
  invisible(NULL)
}
