\name{inner.outer}
\alias{inner.outer}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Comparing Within-set and Between-set Correlations
}
\description{
Returns the average within-set correlation and average between-set correlation for a given list of sets of variables.
}
\usage{
inner.outer(L)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{L}{
\code{The argument 'L' is a list of data.frames with each data.frame containing the the items or variables that are thought to belong together}
}
}
\details{
When doing factor analysis, principal components analysis, or cluster analysis of items one might desire to know how well the items thought to belong to a factor, component, or cluster (or set) correlate amongst each other as opposed to items thought to belong to other factors, components, or clusters (sets). This function returns for each factor, componnet, or cluster its average "inner" correlation and its average "outer" correlation. For more information on logic of this strategy see Rosenthal and Rosnow (2008) under "Principal Components."
}
\value{
Returns a data.frame with 2 rows indicating the average within-set (inner) correlation and average between-set (outer) correlation respectively. The number of columns is equal to length of "L" representing the results for each set. 
\item{Inner t }{The average correlation amongst items in that set.}
\item{Outer r}{The average correlation of items between sets.}
%% ...
}
\references{
Rosenthal, R. & Rosnow, R. R. (2007). Essentials of Behavioral Research: Methods and Data Analysis (3rd ed.). New York: McGraw-Hill.  
}
\author{
Ryne A. Sherman
}
\seealso{
\code{\link{MTMM}}, ~~~
}
\examples{

# We can generate some random data by first creating a population correlation matrix
sig <- matrix(c(1.00, .4, .6, .05, .1, -.05, .4, 1.00, .5, .08, 
	-.02, .03, .6, .5, 1.00, .09, .1, -.07,.05, .08, .09, 1.00, .6, .7, .1, 
	-.02, .1, .6, 1.00, .5, -.05, .03, -.07, .7, .5, 1.00), ncol=6, byrow=TRUE)
sig
library(mvtnorm)
# Now create random data based on this population matrix
d <- rmvnorm(100, sigma=sig)
#Create a list indicating the items belonging to each set
L <- list(d[,1:3], d[,4:6])
#Now use inner.outer on that list
inner.outer(L)


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Factor Structure }

