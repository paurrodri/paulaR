% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/count_how_many_above_value_per_column.R
\name{count_how_many_above_value_per_column}
\alias{count_how_many_above_value_per_column}
\title{Count, per column, how many values in each data column are above threshold}
\usage{
count_how_many_above_value_per_column(data, threshold)
}
\description{
Count, per column, how many values in each data column are above threshold
}
\examples{
\dontrun{
data <- data.frame('a'=c(1,2,3), 'b'=c(-1,-4,10))
count_how_many_above_threshold_per_column(data, 2)
}
}
