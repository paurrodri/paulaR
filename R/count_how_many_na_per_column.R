#' NA handy functions - count NAs per column
#' Counts how many NAs per column
#' @return a number
#' @export
#'
#' @examples
#' \dontrun{
#' data %>% count_how_many_na_per_column()
#' }
#'

count_how_many_na_per_column <- function(data){
  sapply(data, function(x) sum(is.na(x)))
}


