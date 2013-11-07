\name{temp.match.rep}
\alias{temp.match.rep}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Template Matching Replicability
}
\description{
Returns the estimated replicability (reliability) coefficients for Overall and Distinctive template match scores (see temp.match) with confidence intervals.
}
\usage{
temp.match.rep(template, y.set, CI = 0.95, CItype = "xci")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{template}{
A numeric vector of length equal to the number of columns of y.set to be correlated with each row of y.set
}
  \item{y.set}{
A data.frame or matrix of which rows are to be correlated with template
}
  \item{CI}{
A numeric between .00 and 1.00 indicating the desired confidence level.
}
  \item{CItype}{
A character element of either "xci" or "aci" specifying the type of confidence interval to compute based on Koning &  Franses (2003).
}
}
\details{
Sherman and Wood (2013) describe a method for computing the replicability of a vector of correlation coefficients (see vector.alpha). They also discuss how this may be applied to profile correlations. This function applies the strategy outlined by Sherman and Wood (in prep.) and used by the vector.alpha function to template match correlations. The results include the replicability point estimate for both the overall correlations between template and y.set as well as the distinctive profile correlations. Confidence intervals are computed based on Koning and Frances' (2003) methods, choosing either asymptotic ("aci") or exact ("xci"). 
}
\value{
\item{Overall}{Replicability of Overall Template Match Scores }
\item{Distinctive }{Replicability of Distinctive Template Match Scores}
Upper and Lower Limits of the confidence interval are returned. }
\references{
Sherman, R. A. & Wood, D. (in press). Estimating the expected replicability of a pattern of correlations and other measures of association. Multivariate Behavioral Research.
Koning, A. J. & Franses, P. H. (2003). Confidence Intervals for Cronbach's Alpha Coefficient values. ERIM Report Series Reference No. ERS-2003-041-MKT. Available at SSRN: http//ssrn.com/abstract=423658  
}
\author{
Ryne A. Sherman 
}

\seealso{
\code{\link{temp.match}}
\code{\link{vector.alpha}}
}
\examples{
data(opt.temp)
data(caq)
	# Template Matching
	# Sometimes we want to know how closely each Profile matches a theoretically
	# or empirically derived Profile (i.e., a template).
	# Here is the template for the optimally adjusted person in the CAQ.
opt.temp 
temp.match(opt.temp, caq)  # The overall template match scores
	# Now lets look at replicability of these template scores
temp.match.rep(opt.temp,caq)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Template matching  }
\keyword{ Replicability }% __ONLY ONE__ keyword per line
