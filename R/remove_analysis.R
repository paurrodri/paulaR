#' Remove analysis
#'
#' @return removes all files created from cm.initialize_study(demo=T)
#' @export
#'
#' @examples
#' ra()
ra <- function(){
  wd <- getwd()
  rmd_dirs <- list.files(pattern="^\\d")
  unlink(rmd_dirs, recursive = T)
  unlink(paste0(wd, '/figures/'), recursive = T)
  file.remove(paste0(wd, '/markdown-options.R'))
  unlink(paste0(wd, '/rds/'), recursive = T)
  file.remove(paste0(wd, '/reference-files.R'))
  unlink(paste0(wd, '/report_input/'), recursive = T)
  file.remove(paste0(wd, '/study-parameters.R'))
  unlink(paste0(wd, '/tables/'), recursive = T)
}
