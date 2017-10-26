#' @title Get Old Par
#'
#' @description Gets the old par.
#'
#' @export
#'
#'
get_old_par <- function (style) {
  op <- par(no.readonly = TRUE)
  op <- op[names(style$par)]
  .old_par <<- op
}
