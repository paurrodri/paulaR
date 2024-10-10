#' Add zeroes to the left of some elements (strings) from a vector
#'
#' Works for sorting numeric vectors in a string format
#' Adds as many zeroes as the maximum number of characters observed in all elements of the vector
#' If max digits in vector elements is 2 (e.g. "89"), and element is "1", it will be transformed to "01"
#' If max digits in vector elements is 2 (e.g. "89"), and element is "11", it will not be transformed
#' @export
#'
#' @examples
#' \dontrun{
#' vector <- c("1", "2", "12", "111")
#' sort(vector)
#' transformed_vector <- add_zero_to_single_digits(vector)
#' sort(transformed_vector)
#' }
add_zero_to_single_digits <- function(vector){

  .add_zero_string <- function(string, max_length){
    ifelse(nchar(string) < max_length,
           paste0(rep("0", max_length - nchar(string)), string),
           as.character(string))
  }

  max_length <- max(nchar(vector))

  transformed_vector <- as.vector(sapply(
      transformed_vector,
      FUN = .add_zero_string,
      max_length = max_length,
      simplify = T)
  )

  return(transformed_vector)

}

