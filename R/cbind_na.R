#' Bind two lists in two columns of a df
#' Bind two lists in two columns of a df - add NAs when shortest column is fully added
#' @return a df with 2 columns
#' @export
#'
#' @examples
#' \dontrun{
#' cbind_na(list1, list2)
#' cbind_na(vector1, vector2)
#' }
#'


cbind_na <- function(a, b) {
  max_length <- max(length(a), length(b))
  if (length(a) < max_length) {
    a <- c(a, rep(NA, max_length - length(a)))
  }
  if (length(b) < max_length) {
    b <- c(b, rep(NA, max_length - length(b)))
  }
  result_df <- data.frame(a = a, b = b)
  return(result_df)
}
