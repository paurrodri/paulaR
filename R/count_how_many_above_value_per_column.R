#' Count, per column, how many values in each data column are above threshold
#' @export
#'
#' @examples
#' \dontrun{
#' data <- data.frame('a'=c(1,2,3), 'b'=c(-1,-4,10))
#' count_how_many_above_threshold_per_column(data, 2)
#' }
count_how_many_above_value_per_column <- function(data, threshold){
  sapply(data, function(x) sum(data > value))
}
