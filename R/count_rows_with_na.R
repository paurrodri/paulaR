#' NA handy functions - count rows with NA
#' Counts number of rows with NAs
#' @return a number
#' @export
#'
#' @examples
#' \dontrun{
#' data %>% count_rows_with_na()
#' }
#'


count_rows_with_na <- function(data){
  length(which(apply(data, MARGIN = 1, function(x) sum(is.na(x)) != 0)))
}


