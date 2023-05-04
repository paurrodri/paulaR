#' NA handy functions - get columns with all NAs
#' Shows columns which have all NAs in a tibble
#' @return a tibble
#' @export
#'
#' @examples
#' \dontrun{
#' data %>% get_columns_with_all_na()
#' }
#'

get_columns_with_all_na <- function(data){
  does_col_have_all_na <- map(
    data %>% count_how_many_na_per_column() %>% as.list(),
    ~eval(. == nrow(data))
  )
  cols_with_all_na <- names(which(unlist(does_col_have_all_na)))
  return(cols_with_all_na)
}
