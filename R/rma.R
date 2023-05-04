#' Remove all
#'
#' @return removes everything, equivalent to rm(list = ls())
#' @export
#'
#' @examples
#' \dontrun{
#' rma()
#' }
#'

rma <- function() {
  rm(list = ls(envir = .GlobalEnv), envir = .GlobalEnv)
}
