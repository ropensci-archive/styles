#' @title Apply Defaults
#'
#' @description Reapplys the defaults.
#'
apply_defaults <- function (style) {

  package_styles <- style[names(style) != "par"]
  package_names <- names(package_styles)

  for (i in seq_along(package_styles)) {

    package <- package_styles[[i]]
    fun_names <- names(package)

    for (j in seq_along(package))
      set_default(fun_names[j], package[[j]], package = package_names[i])

  }

}
