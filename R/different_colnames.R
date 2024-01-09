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

different_colnames <- function(data_1, data_2){
  colnames(data_1)[!colnames(data_1) %in% colnames(data_2)]
}
