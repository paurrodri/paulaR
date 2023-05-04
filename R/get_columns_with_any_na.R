#' NA handy functions - get columns with any NAs
#' Shows columns which have any NAs in a tibble
#' @return a tibble
#' @export
#'
#' @examples
#' \dontrun{
#' data %>% get_columns_with_any_na()
#' }
#'

get_columns_with_any_na <- function(data){
  names(which(sapply(data, function(x) sum(is.na(x))) > 0))
}
