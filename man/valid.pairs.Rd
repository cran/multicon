\name{valid.pairs}
\alias{valid.pairs}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Valid Pairs
}
\description{
Returns information about the number of valid X-Y pairs.
}
\usage{
valid.pairs(x, y)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A vector of the same length as 'y'
}
  \item{y}{
A vector of the same lenght as 'x'
}
}
\details{
This function returns the total number of X-Y pairs, the number of X-Y pairs with at least one of the pairs missing a value, the number of X-Y pairs without either pair missing, and the percentage of total pairs that do not have either pair missing. Called by the Profile.r function.
}
\value{
A list containing the following:
\item{Tot }{The total number of X-Y pais }
\item{Miss }{The total number of X-Y pairs with at least one value missing}
\item{Valid }{The total number of X-Y pairs with neither value missing}
\item{Pct }{The percentage of X-Y pairs with neither value missing}

}

\author{
Ryne A. Sherman
}

\seealso{
 \code{\link{Profile.r}}
}
\examples{
	# Making some data
x.vect <- rnorm(100, m=0, sd=.5)
y.vect <- rnorm(100, m=0, sd=.5)
	#checking valid pairs
valid.pairs(x.vect,y.vect) 
	#making some missing data
x.vect[1:5] <- NA
y.vect[95:100] <- NA
	#now checking valid pairs 
valid.pairs(x.vect,y.vect) 
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ valid pairs }
\keyword{ missing data }

