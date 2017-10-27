#' @title Remove Shims
#'
#' @description Removes current shims.
#'
remove_shims <- function () {
  if ("shims" %in% search())
    detach ("shims")
}
