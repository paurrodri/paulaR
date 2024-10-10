#' Count how many values in a vector are above threshold
#' @export
#'
#' @examples
#' \dontrun{
#' vector <- c(1, 2, -1, 2, 3)
#' count_how_many_above_threshold(vector, 2)
#' }

count_how_many_above_threshold <- function(vector, threshold){
  sum(vector > threshold)
}
