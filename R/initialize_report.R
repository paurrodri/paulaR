#' Initialize report
#'
#' @return calls devtools load_all, install and cm.initialize_report(demo=T)
#' @export
#'
#' @examples
#' ir()
ir <- function(){
  devtools::load_all(".")
  devtools::install()
  cm.initialize_report(demo=T)
}
