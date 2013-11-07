\name{n4rci}
\alias{n4rci}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Sample Size for CI for r
}
\description{
1) Calculates the width of a confidence interval for the correlation coefficient r given the sample size (N) and the alpha level.
2) Calculates the sample size required to obtain a confidence interaval for the correlation coefficient r of a desired width (CIwidth) given alpha.
3) Calculates the alpha for a confidence interval for r given desired confidence interval width (CIwidth) and the sample size (N).
}
\usage{
n4rci(CIwidth = NULL, N = NULL, alpha = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{CIwidth}{
A numeric between 0 and 1.00 indicating desired confidence interval width.
}
  \item{N}{
A numeric element greater than 3 indicating the desired sample size.
}
  \item{alpha}{
A numeric element between 0 and 1.00 indicating the desired alpha (Type-I error rate) level.
}
}
\details{
Given two of the three arguments, calculates the result of the third. Is probably most useful for determining the sample size one needs to obtain a desired confidence interval. Note that when operated in this mode the result is not always a whole number (i.e., partial Ns are returned). Rounding up is recommended. Is second most useful for calculating the width of one's confidence interval given the sample size. Is third (least) useful for calculating alpha.
}
\value{
No matter which mode is used, the N, the CI Width and the alpha are returned.
}

\author{
Ryne A. Sherman
}

\examples{
n4rci(CIwidth=.15, N=NULL, alpha=.05) #finding the necessary N
n4rci(CIwidth=NULL, N=200, alpha=.05) #finding the CI width
n4rci(CIwidth=.3, N=120, alpha=NULL) #finding the alpha
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ confidence intervals }
\keyword{ power analysis }
\keyword{ sample size }% __ONLY ONE__ keyword per line
