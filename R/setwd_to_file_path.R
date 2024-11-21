#' Set working directory to the path of the current script
#'
#' @export
#'
#'
#' @examples
#' \dontrun{
#' setwd_to_file_path()
#' }
#'
setwd_to_file_path <- function(){
  dir <- dirname(rstudioapi::getActiveDocumentContext()$path)
  setwd(dir)
  print(paste("Working directory set to:", dir))
  rm(dir)
}
