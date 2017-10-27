#' @title Add Shims
#'
#' @description Add new shims.
#'
add_shims <- function () {
  attach (.shims,
          name = "shims",
          warn.conflicts = FALSE)
}
