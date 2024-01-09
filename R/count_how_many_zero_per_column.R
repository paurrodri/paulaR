#' Zero handy functions - count zeroes per column
#' Counts how many zeroes per column
#' @return a number
#' @export
#'
#' @examples
#' \dontrun{
#' data %>% count_how_many_zero_per_column()
#' }
#'

count_how_many_zero_per_column <- function(data){
  sapply(data, function(x) sum(x == 0))
}


