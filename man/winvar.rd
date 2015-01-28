\name{winvar}
\alias{winvar}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Winsorized Variance
}
\description{
Returns the winsorized variance of x.
}
\usage{
winvar(x, tr = .2, na.rm = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A numeric vector of which to get the winsorized variance
}
  \item{tr}{
The proportion of scores to winsorize
}
  \item{na.rm}{
A logical indicating whether missing values should be removed prior to calculation.
}
}
\details{
This function is borrowed directly from the {WRS} package.}
\value{
Returns the winsorized variance of x based on tr percente winsorizing.
}

\author{
Ryne A Sherman
}

\seealso{
\code{\link{var}}
}
\examples{
x <- rnorm(20)
var(x)
winvar(x)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ robust  }
\keyword{ winsorized variance }
\keyword{ variance }% __ONLY ONE__ keyword per line
