#' NA handy functions - show rows with NAs
#' Shows rows with NAs in a tibble
#' @return a tibble
#' @export
#'
#' @examples
#' \dontrun{
#' data %>% show_rows_with_na()
#' }
#'

show_rows_with_na <- function(data){
  data[which(apply(data, MARGIN = 1, function(x) sum(is.na(x)) != 0)), ]
}
