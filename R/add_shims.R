#' @title Add Shims
#'
#' @description Add new shims.
#'
#' @export
#'
#'
#'
add_shims <- function () {
  attach (.shims,
          name = "shims",
          warn.conflicts = FALSE)
}
