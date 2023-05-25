#' Ceiling to a number of significant digits
#'
#' @return number, rounded-up (ceiling) to the selected number of significant digits
#' @export
#' 
#' @description for digits, I recommend using "trunc(log10(max(your_data_column)))"
#'
#' @examples
#' \dontrun{
#' ceiling_signif(434, 2) # returns 500
#' ceiling_signif(-404, 2) # returns -500
#' limits$Shannon  <- c(trunc_signif(min(alphaDiv$Shannon), digits = trunc(log10(min(alphaDiv$Shannon))) + 1), ceiling_signif(max(alphaDiv$Shannon), digits = trunc(log10(max(alphaDiv$Shannon)))))
#' }
#'

ceiling_signif <- function(x, digits){
  if (x >= 0){
    y <- ceiling(x/10^digits)*10^digits
  } else {
    y <- -ceiling(-x/10^digits)*10^digits
  }
  return(y)
}
