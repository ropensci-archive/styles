#' @title Remove Default
#'
#' @description Remove the defaults.
#'
#' @export
#'
#'

remove_default <- function (fun_name, package = "graphics") {

  ns <- asNamespace(package)
  fun <- get(fun_name, ns)
  fun <- reset_default(fun)

  unlockBinding(fun_name, ns)
  ns[[fun_name]] <- fun
  lockBinding(fun_name, ns)

  rm(list = fun_name, envir = .shims)

}
