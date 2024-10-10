#' Extract which items in a column of tibble are duplicated
#' @export
#'
#' @param tibble a tibble
#' @param column string, column name of the tibble (must be specified between quotes)
#'
#' @import magrittr
#' @import dplyr
#'
#' @examples
#' \dontrun{
#' tibble <- tibble::tibble('name' = c("a", "b", "c", "a", "aa", "a", "c"))
#' which_items_are_duplicated(tibble, "name")
#' }
which_items_are_duplicated <- function(tibble, column){
  tibble %>%
    dplyr::group_by(!!dplyr::sym(column)) %>%
    dplyr::count() %>%
    dplyr::filter(n > 1) %>%
    dplyr::select(!!dplyr::sym(column)) %>%
    dplyr::pull()
}
