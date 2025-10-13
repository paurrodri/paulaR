#' Show R markdown parameters
#'
#' @return table showing all the R markdown parameters and their correspinding values
#' @export
#'
#' @param params list of Rmd parameters
#'
#' @examples
#' \dontrun{
#' show_rmd_params()
#' }
#'
show_rmd_params <- function(params){
  pander::pander(data.frame(
    parameter = names(params),
    value = unlist(params, use.names = FALSE)
  ))
}
