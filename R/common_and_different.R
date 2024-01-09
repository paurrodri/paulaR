#' Common or different items
#' Show common or different items i.e. of a list, colnames of a df, rows in a df
#' @export
#'
#' @examples
#' \dontrun{
#' common_colnames(df1, df2)
#' different_colnames(df1, df2)
#' common_items(list1, list2)
#' different_items(list1, list2)
#' common_rows(df1, df2, colname1, colname2) # colname2 can be NULL, then same name as colname1 is taken
#' }
#'

common_colnames <- function(data_1, data_2){
  colnames(data_1)[colnames(data_1) %in% colnames(data_2)]
}

different_colnames <- function(data_1, data_2){
  colnames(data_1)[!colnames(data_1) %in% colnames(data_2)]
}

common_items <- function(list_1, list_2){
  list_1[list_1 %in% list_2]
}

different_items <- function(list_1, list_2){
  list_1[!list_1 %in% list_2]
}

common_rows <- function(data_1, data_2, colname_1, colname_2 = NULL){
  colname_2 <- ifelse(is.null(colname_2), colname_1, colname_2)
  data_1[[colname_1]][data_1[[colname_1]] %in% data_2[[colname_2]]]
}
