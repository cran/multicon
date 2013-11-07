\name{alpha.cov}
\alias{alpha.cov}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Cronbach's Alpha of Covariance Matrix
}
\description{
Returns Cronbach's alpha from a covariance matrix
}
\usage{
alpha.cov(sigma)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{sigma}{
  	 A square covariance or correlation matrix
}
}
\details{
If a correlation matrix is provided rather than a covariance matrix, the result is a standardized Cronbach's alpha
}
\value{

Returns Standardized alpha when a correlation matrix is the input, and returns Raw alpha when a covariance matrix is input.

}
\author{
Ryne A. Sherman
}

\seealso{
\code{\link[psych]{alpha}}
}
\examples{	
data(RSPdata)
names(RSPdata)
	# Forming a composite:
	# We will first form a composite extraversion variable using
	# BFI scores. 
    # Three items need to be reverse scored
sBFI6r <- 6 - RSPdata$sBFI6
sBFI21r <- 6 - RSPdata$sBFI21
sBFI31r <- 6 - RSPdata$sBFI31
    # Now put them all into one data.frame
ext.vars <- data.frame(RSPdata$sBFI1, sBFI6r, RSPdata$sBFI11, 
	RSPdata$sBFI16, sBFI21r, RSPdata$sBFI26, sBFI31r, RSPdata$sBFI36)
head(ext.vars) # Looks good
  # Get the internal consistency stats using the alpha() function in the
  # psych package
alpha(ext.vars)
  # We can also get alpha from the correlation/covariance matrices
alpha.cov(cor(ext.vars))  # Standardized Alpha
alpha.cov(cov(ext.vars))  # Raw Alpha
	
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ alpha }
\keyword{ covariance }% __ONLY ONE__ keyword per line
