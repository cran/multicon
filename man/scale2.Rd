\name{scale2}
\alias{scale2}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Scale
}
\description{
Returns scores in x after rescaling
}
\usage{
scale2(x, center = TRUE, scale = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A numeric vector, matrix or data.frame
}
  \item{center}{
A logical indicating whether the scores in the columns in x should have their column means subtracted 
}
  \item{scale}{
A logical indicating where the scores in the columns in x should be divided by their column standard deviations
}
}
\details{
The built-in R function scale uses the sample standard deviation when its scale option is set to TRUE. This function uses the population standard deviation instead.
}
\value{
Returns a variable with dimensions equal to that has been scaled according to the arguments used
}

\author{
Ryne A. Sherman
}

\seealso{
\code{\link{scale}}
}
\examples{
scale(1:5)
scale2(1:5)
	
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ scale }
\keyword{ centering }% __ONLY ONE__ keyword per line
