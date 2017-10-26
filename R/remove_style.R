#' @title Remove Style.
#'
#' @description Removes the current style.
#'
#' @export
#'
#'
remove_style <- function() {
  remove_shims()
  par(.old_par)
  remove_defaults()
  .current_style <<- list()
}
