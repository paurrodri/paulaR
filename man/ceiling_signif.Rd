% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ceiling_signif.R
\name{ceiling_signif}
\alias{ceiling_signif}
\title{Ceiling to a number of significant digits}
\usage{
ceiling_signif(x, digits)
}
\value{
number, rounded-up (ceiling) to the selected number of significant digits
}
\description{
for digits, I recommend using "trunc(log10(max(your_data_column)))"
}
\examples{
\dontrun{
ceiling_signif(434, 2) # returns 500
ceiling_signif(-404, 2) # returns -500
limits$Shannon  <- c(trunc_signif(min(alphaDiv$Shannon), digits = trunc(log10(min(alphaDiv$Shannon))) + 1), ceiling_signif(max(alphaDiv$Shannon), digits = trunc(log10(max(alphaDiv$Shannon)))))
}

}
