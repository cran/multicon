\name{sig.r}
\alias{sig.r}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Significance Levels for Correlations 
}
\description{
Returns asterisks denoting statistical significance levels for a vector of correlations
}
\usage{
sig.r(r, n, tail)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{r}{
A numeric vector of correlation coefficients 
}
  \item{n}{
n the sample size associated with the vector of correlation coefficients
}
  \item{tail}{
An integer of value 1 or 2 indicating whether a one-tailed (1) or two-tailed (2) significance level is to be used.

}
}
\details{
This function is called by the q.cor function to put statistical significance levels next to the resulting correlations.
}
\value{
	A symbol is returned to identify the significance level of a correlation coefficient.
A value of "   " denotes p > .1. 
A value of "+  " denotes p < .1.  
A value of "*  " denotes p < .05.
A value of "** " denotes p < .01.
A value of "***" denotes p < .001.
}

\author{
Ryne A. Sherman
}

\seealso{
\code{\link{q.cor}}, ~~~
}
\examples{
	# A correlation of r=.15 with a sample of 100 is significant 
	#at p < .05 using a one-tailed t-test
sig.r(r=.15,n=200,tail=1) 
	# A correlation of r=.1 is trending toward significance at p < .1.
sig.r(r=.1,n=200,tail=1)	
	# Or it can be used on a vector. 
	#This is helpful for displaying significance levels of results.
v <- c( .1, .3, .4, .05, .04, .8)
sig.labels <- sig.r(v, 200, 1)
table1 <- data.frame(v, sig.labels)
colnames(table1) <- c("r", "sig level")
table1
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ q.cor }
\keyword{ significance }
