#' Add suffixes to duplicated strings in a vector
#' If all unique elements in the vector have less than 26 duplicates,
#' then suffix will be a latin letter, otherwise it will be a roman number
#' @export
#'
#' @examples
#' \dontrun{
#' vector <- c("hello", "hi", "hola", "hello", "hello")
#' add_suffix_to_duplicates(vector)
#' }

add_suffix_to_duplicates <- function(vector) {

  # Find duplicated names
  duplicated_indices <- duplicated(vector)
  duplicated_names <- vector[duplicated_indices] %>% unique()
  duplicated_times <- as.list(table(vector))

  # Add a suffix counter for each name
  suffix_counter <- rep(1, length(duplicated_names))
  names(suffix_counter) <- duplicated_names

  # Add suffix to duplicated names
  modified_vector <- sapply(vector, function(name) {
    if (name %in% duplicated_names) {

      # Suffix with latin letters
      if (duplicated_times[[name]] < 26){
        # Determine suffix
        counter <- suffix_counter[[name]]
        suffix <- letters[counter]
        name_suffix <- paste(name, suffix, sep = "_")
        # Increase counter
        suffix_counter[[name]] <<- counter + 1
        return(name_suffix)

        # Suffix with roman number
      } else {
        # Determine suffix
        counter <- suffix_counter[[name]]
        suffix <- as.roman(counter)
        name_suffix <- paste(name, suffix, sep = "_")
        # Increase counter
        suffix_counter[[name]] <<- counter + 1
        return(name_suffix)
      }

      # No duplicate
    } else {
      return(name)
    }
  })
  return(modified_vector)
}

