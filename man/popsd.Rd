\name{popsd}
\alias{popsd}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Population Standard Deviation
}
\description{
Returns the population standard deviation of x
}
\usage{
popsd(x, nomiss = 0.8)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A numeric vector
}
  \item{nomiss}{
A numeric between .00 and 1.00 specifying the proporiton of valid cases in x (i.e. data that must not be NA) for the sd to be returned
}
}
\details{
R's built-in sd function divides the sum of the squared deviations from the mean by the number of observations minus 1 (N-1). However, there are times where one would prefer to use the formula with N in the denominator (e.g. if one is working with the entire population of scores). This function does just that.
}
\value{
This function returns the population standard deviation.
}

\author{
Ryne A. Sherman
}

\seealso{
\code{\link{sd}}
}
\examples{
x  <- rnorm(100, mean = 12, sd = 10)
sd(x) #sample standard deviation
popsd(x) #population standard deviation 
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ standard deviation}
\keyword{ population descriptive statistics }% __ONLY ONE__ keyword per line
