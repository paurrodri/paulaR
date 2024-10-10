#' Calculates percentage of first element relative to that element and the remaining elements
#'
#' @param n1 number from which the percentage will be calculated
#' @param n2 number or vector of numbers, used as demonimator (together with n1) to calculate the percentage of n1
#'
#' @export
#'
#' @examples
#' \dontrun{
#' perc(12, 24)
#' perc(12, c(12, 24))
#' }

perc <- function(n1, n2){
    return((n1/sum(n1,n2))*100)
}

