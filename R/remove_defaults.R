#' @title Remove Defaults
#'
#' @description Removes the defaults.
#'
#' @export
#'
#'
remove_defaults <- function () {

  package_styles <- .current_style[names(.current_style) != "par"]
  package_names <- names(package_styles)

  for (i in seq_along(package_styles)) {

    lapply(names(package_styles[[i]]),
           remove_default,
           package = package_names[i])

  }

}
