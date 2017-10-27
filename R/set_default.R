#' @title Set Default
#'
#' @description Set the defaults.
#'
set_default <- function (fun_name, value, package = "graphics") {

  ns <- asNamespace(package)
  fun <- get(fun_name, ns)
  default(fun) <- value

  unlockBinding(fun_name, ns)
  ns[[fun_name]] <- fun
  lockBinding(fun_name, ns)

  .shims[[fun_name]] <- fun

}
