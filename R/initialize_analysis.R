#' Initialize analysis/study
#'
#' @return calls devtools load_all, install, and
#' cm.initialize_study(author = "Test Demo", demo = TRUE, method = "acmemap4")
#' and it knits the 010.Rmd
#' @export
#'
#' @examples
#' ia()
ia <- function(){
  devtools::load_all()
  devtools::install()
  cm.analysis::cm.initialize_study(author = "Test Demo", demo = TRUE, method = "acmemap4")
  report_name <- "r1v1"
  cm.analysis::cm.knit("010_Prepare-metadata/010_Prepare-metadata.Rmd")
}
