\name{reQ}
\alias{reQ}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Forced Q-Sort Distribution
}
\description{
Replace the values in x with the distribution of values defined by dist.
}
\usage{
reQ(x, dist, ties = "random")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A data.frame, matrix, or numeric vector containing the values to be reQ'd. It is assumed that the rows are to be reQ'd if a matrix or data.frame is given.
}
  \item{dist}{
A numeric vector whose sum must be equal to the length of x. The Q values are assumed to be from 1 to length(dist). The values in dist indicate the number of times each Q value is to be used.
}
  \item{ties}{
A character element passed to the \code{\link{rank}} function indicating how ties should be broken.
}
}
\details{
This function takes a vector of data and "normalizes" it by forcing it to fit a Q-sort distributon (see Block, 1978 for information on the Q-sort method).
}
\value{
Returns a vector of size x containing data that has been normalized to fit a Q-Sort Distributions 
}
\references{
Block, J. (1978). The Q-Sort method in personality assessment and psychiatric research. Palo Alto, CA: Consulting Psychologists Press. (Originally published 1961).
}
\author{
Ryne A. Sherman
}
\seealso{
\code{\link{ipsatize}}
\code{\link{rank}}
}
\examples{
data(rate.caq)
head(rate.caq)
rowMeans(rate.caq)
caq.dist = c(5,8,12,16,18,16,12,8,5)
caq.reQ = reQ(rate.caq, dist = caq.dist)
head(caq.reQ)
rowMeans(caq.reQ)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Q-Sort }
\keyword{ Likert-type ratings }% __ONLY ONE__ keyword per line
