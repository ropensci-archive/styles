#' @title Remove Shims
#'
#' @description Removes current shims.
#'
#' @export
#'
#'
#'
remove_shims <- function () {
  if ("shims" %in% search())
    detach ("shims")
}
