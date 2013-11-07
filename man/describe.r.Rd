\name{describe.r}
\alias{describe.r}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Descriptive Statistics for Correlations 
}
\description{
Returns the descriptive statistics for a vector, matrix, or data.frame of correlation coefficients stored in x by using fisher's r to z transformation, computing the values, and then back tranforming the values using fisher's z to r transofrmation.
}
\usage{
describe.r(x, na.rm = TRUE, tr = 0.2, type = 3)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A vector, matrix, or data.frame object of correlation coefficients.
}
  \item{na.rm}{
A logical indicating whether NA values should be removed before calculations are done.
}
  \item{tr}{
A numeric element between .00 and .50 specifying the amount of trimming to be done for the calculation of the trimmed mean.
}
  \item{type}{
Which estimate of kurtosis should be used? See the describe function in the 'psych' package.
}
}
\details{
The psych package function describe computes a number of descriptive statistics for ordinary data. However, correlation coefficients are typically r-to-z transformed before computing such statistics. This function makes getting the descriptive statistics for correlation coefficients easy by doing such transformations.
}
\value{
A data.frame of descriptive statistics: item name, item number, number of valid cases, mean, standard deviation, median, trimmed mean, mad: median absolute deviation (from the median), minimum, maximum, skew, kurtosis, standard error.
}

\author{
Ryne A. Sherman
}

\seealso{
\code{\link[psych]{describe}}
}
\examples{
data(caq)
data(acq.comp)
mycors <- Profile.r(caq, acq.comp) # Get profile agreement correlations
describe.r(mycors)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ descriptive statistics }
\keyword{ correlations }% __ONLY ONE__ keyword per line
