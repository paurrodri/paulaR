#' Obtain quantiles of a vector
#' @export
#'
#' @param vector vector
#' @param breaks how many quantiles, default 4 (i.e quartiles)
#' @param labels either FALSE or NULL, default FALSE
#'
#' @examples
#' \dontrun{
#' vector <- c(1, 2, -1, 2, 3)
#' get_quantiles(vector) # quartiles
#' get_quantiles(vector, breaks = 3) # tertiles
#'}
get_quantiles <- function(vector,
                          breaks = 4,
                          labels = FALSE
){
  cut_result <- cut(vector,
                    breaks = breaks,
                    labels = labels,
                    include.lowest = TRUE)
  return(as.factor(cut_result))
}
