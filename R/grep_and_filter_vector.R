#' Filter a vector with elements matching a pattern
#'
#' @param vector the vector
#' @param pattern the pattern
#'
#' @export
#'
#' @examples
#' \dontrun{
#' vector <- list("hello", "hi", "hola", "hey")
#' grep_and_filter_vector(vector, "he")
#' }

grep_and_filter_vector <- function(vector, pattern){
  unlist(vector[which(grepl(pattern, vector))])
}
