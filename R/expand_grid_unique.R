#' Expand grid with 2 vectors, but only outputs unique combinations
#' Order of factors is not considered i.e. 1&4 is the same as 4&1 and therefore only one combination will be in the output
#' @export
#'
#' @param x vector
#' @param y vector
#' @param colnames vector of 2 names for the column names of the resulting dataframe
#'
#' @return dataframe containing the unique combinations of x and y (order of factors is not considered, see above)
#'
#' @examples
#' \dontrun{
#' expand_grid_unique(c(1,2,3,1), c(4,5,6))
#' tibble::as_tibble(expand_grid_unique(c(1,2,3,1), c(4,5,6), c("col1", "col2")))
#' }

expand_grid_unique <- function(x, y,
                               colnames = NULL,
                               include.equals = FALSE){
  x <- unique(x)
  y <- unique(y)
  g <- function(i) {
    z <- setdiff(y, x[seq_len(i-include.equals)])
    if(length(z)) cbind(x[i], z, deparse.level=0)
  }
  output <- do.call(rbind, lapply(seq_along(x), g))
  colnames(output) <- colnames

  return(output)
}
