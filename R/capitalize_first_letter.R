#' Capitalize first letter of string
#' @export
#'
#' @examples
#' \dontrun{
#' capitalize_first_letter("hello world!")
#' }

capitalize_first_letter <- function(string) {
  capitalized_string <- paste(
    toupper(substr(string, 1, 1)),
    substr(string, 2, nchar(string)),
    sep = '')
  return(capitalized_string)
}
