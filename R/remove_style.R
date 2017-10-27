#' @title Remove Style.
#'
#' @description Removes the current style.
#'
#' @include remove_defaults.R remove_shims.R
#'
#' @export
#'
#'
remove_style <- function() {
  remove_shims()
  par(.cache$old_par)
  remove_defaults()
  .cache$current_style <- list()
}
