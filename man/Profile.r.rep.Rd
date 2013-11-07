\name{Profile.r.rep}
\alias{Profile.r.rep}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Profile Correlation Replicability 
}
\description{
Computes the replicability of both overall and distinctive Profile correlations.
}
\usage{
Profile.r.rep(x.set, y.set, nomiss = 1, CI = 0.95, CItype = "xci")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x.set}{
A data.frame or matrix of the same dimensions as y.set with rows corresponding to the rows in y.set
}
  \item{y.set}{
A data.frame or matrix of the same dimensions at x.set with rows correponsding to the rows in x.set
  }
  \item{nomiss}{
A numeric between .00 and 1.00 indicating the proportion of pairs of scores that must be valid for a result to be computed.
}
  \item{CI}{
A numeric between .00 and 1.00 indicating the desired confidence level.
}
  \item{CItype}{
A character element of either "xci" or "aci" specifying the the type of confidence interval to compute based on Koning & Franses (2003).
}
}
\details{
Sherman and Wood (in press) describe a method for computing the replicability of a vector of correlation coefficients (see vector.alpha). They also discuss how this may be applied to profile correlations. This function applies the strategy outlined by Sherman and Wood (in press) and used by the vector.alpha function to profile correlations. The results include the replicability point estimate for both the overall profile correlations between x.set and y.set as well as the distinctive profile correlations. Confidence intervals are computed based on Koning and Frances' (2003) methods, choosing either asymptotic ("aci") or exact ("xci"). 
}
\value{
A matrix containing the replicability point estimate and its confidence intervals. 
\item{Overall}{Replicability of Overall correlations between x.set and y.set}
\item{Distinctive }{Replicability of Distinctive correlations between x.set and y.set}
}
\references{
Sherman, R. A. & Wood, D. (in press). Estimating the expected replicability of a pattern of correlations and other measures of association. Multivariate Behavioral Research.
}
\author{
Ryne A. Sherman
}
\seealso{
\code{\link{Profile.r}}
\code{\link{vector.alpha}}
}
\examples{
data(acq1)
data(caq)
	#Lets look at Profile correlations between self-report California Adult Q-Sort 
	#ratings of personality and Aquaintance #ratings
names(acq1)
names(caq)
	# The basic Profile agreements
Profile.r(caq, acq1)  
	# Both overall and distinctive agreements
Profile.r(caq, acq1, distinct = TRUE)$Agreement 
	# How replicable (reliable) are those agreement patterns?
Profile.r.rep(caq, acq1)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ replicability }
\keyword{ distinctiveness }
\keyword{ profile correlations }% __ONLY ONE__ keyword per line
