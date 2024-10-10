#' Write a string showing P-value in a nice format
#' @export
#'
#' @examples
#' \dontrun{
#' write_pvalue_string(0.00000001)
#' write_pvalue_string(0.00000001, cutoff = 0.001, decimal_round = 3)
#' }

write_pvalue_string <- function(p,
                                cutoff = 0.01,
                                decimal_round = 2,
                                name = "p"){
  if (p < cutoff){
    return(glue("{name} < {cutoff}"))
  } else {
    p_round <- round(p, decimal_round)
    return(glue("{name} = {p_round}"))
  }
}
