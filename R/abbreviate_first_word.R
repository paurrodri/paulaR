#' Abbreviate first word of string
#'
#' Transforms e.g. "Akkermansia muciniphila" to "A. muciniphila"
#' Doesn't transform string if only composed by one word
#' Could be applied in a vectorised form
#'
#' @export
#'
#' @examples
#' \dontrun{
#' string <- "Akkermansia muciniphila"
#' abbreviate_first_word(string)
#' vector <- c("Akkermansia muciniphila", "Bifidobacterium longum subsp. infantis")
#' as.vector(sapply(vector, abbreviate_first_word, simplify=T))
#' }

abbreviate_first_word <- function(string) {
  words <- stringr::str_split(string, "\\s+")
  if (length(words[[1]]) > 1) {
    # Abbreviate the first word
    words[[1]][1] <- stringr::str_sub(words[[1]][1], 1, 1)
    # Add dot
    words[[1]][1] <- stringr::str_c(words[[1]][1], ".")
    return(stringr::str_c(words[[1]], collapse = " "))
  } else {
    return(string)
  }
}
