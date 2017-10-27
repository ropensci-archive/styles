#' @title Get Old Par
#'
#' @description Gets the old par.
#'
get_old_par <- function (style) {
  op <- par(no.readonly = TRUE)
  op <- op[names(style$par)]
  .cache$old_par <- op
}
