#' Truncate to a number of significant digits
#'
#' @return number, truncated to the selected number of significant digits
#' @export
#' 
#' @description for digits, I recommend using "trunc(log10(min(your_data_column))) + 1"
#'
#' @examples
#' \dontrun{
#' trunc_signif(498, 2) # returns 400
#' trunc_signif(498, 1) # returns 490
#' trunc_signif(-498, 2) # returns -500
#' limits$Shannon  <- c(trunc_signif(min(alphaDiv$Shannon), digits = trunc(log10(min(alphaDiv$Shannon))) + 1), ceiling_signif(max(alphaDiv$Shannon), digits = trunc(log10(max(alphaDiv$Shannon)))))
#' }
#'

trunc_signif <- function(x, digits){
  if (x >= 0){
    y <- trunc(x/10^digits)*10^digits
  } else {
    y <- -ceiling(-x/10^digits)*10^digits
  }
  return(y)
}
