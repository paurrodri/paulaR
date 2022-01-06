#' Remove report
#'
#' @return removes all files created from cm.initialize_report(demo=T)
#' @export
#'
#' @examples
#' rr()
rr <- function() {
  wd <- getwd()
  file.remove(paste0(wd, '/All-methods.Rmd'))
  file.remove(paste0(wd, '/CM_report.docx'))
  file.remove(paste0(wd, '/CM_report.md'))
  file.remove(paste0(wd, '/CM_report.Rmd'))
  unlink(paste0(wd, '/CM_report_files/'), recursive = T)
  unlink(paste0(wd, '/report_input/'), recursive = T)
  file.remove(paste0(wd, '/study-parameters.R'))
  unlink(paste0(wd, '/subsections/'), recursive = T)
  unlink(paste0(wd, '/word_templates/'), recursive = T)
  unlink(paste0(wd, '/supplementary_files/'), recursive = T)
  unlink(paste0(wd, '/tables/'), recursive = T)
  unlink(paste0(wd, '/report_setup/'), recursive = T)
}
