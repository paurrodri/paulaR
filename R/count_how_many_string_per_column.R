#' Count how many times a string is detected per column
#' Counts how many times a string is detected per column in a df
#' @return a number per column
#' @export
#'
#' @examples
#' \dontrun{
#' data %>% count_how_many_string_per_column("mystring")
#' }
#'
#'
count_how_many_string_per_column <- function(data, string){
  sapply(data, function(x) sum(grepl(string, x)))
}

