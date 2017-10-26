#' @title Remove Style.
#'
#' @description Removes the current style.
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
