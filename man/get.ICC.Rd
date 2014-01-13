\name{get.ICC}
\alias{get.ICC}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Intra-class Correlations
}
\description{
Calculates the 6 intra-class correlations for the columns in the matrix or data.frame x, where the columns are typically raters or items, following Shrout and Fleiss (1979).
}
\usage{
get.ICC(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A matrix or data.frame on which to calculate ICCs of the columns.
}
}
\details{
This function is the workhorse function for item.ICC and Profile.ICC. It computes the intra-class correlations for a single item and for the composite of the items in the data.frame or matrix x. Of note, the results should be intepreted with extreme caution if values in x are missing. If possible, the best choice is to remove missing values from x first. 
}
\value{
A matrix containing the values for the six possible intra-class correlations described by Shrout and Fleiss (1979). 
}
\references{
Shrout, P. E. & Fleiss, J. L. (1979). Intraclass correlations: Uses in assessing rater reliability. Psychological Bulletin, 86, 420-428  
}
\author{
Ryne A. Sherman
}
\note{
This function is the workhorse function for item.ICC and Profile.ICC. It is rarely used as a stand alone function.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{item.ICC}}
\code{\link{Profile.ICC}}
}
\examples{
y <- matrix(rnorm(200), ncol=2)
get.ICC(y)	
}
\keyword{ Intraclass correlations }
\keyword{ Reliability }% __ONLY ONE__ keyword per line
