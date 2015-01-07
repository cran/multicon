\name{vector.alpha}
\alias{vector.alpha}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Alpha Replicability of a Vector (pattern) of Correlations

}
\description{
A function for compute the alpha replicability of a vector of linear coefficients (e.g. correlations, covariances) between a single variable (x) and a set of other variables (set).}
\usage{
vector.alpha(x, set, type = "cor", CI = 0.95, CItype = "xci", minval = -1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A numeric vector of the same length as nrow(set).
}
  \item{set}{
A data.frame or matrix of which each column is to be related with x.
}
  \item{type}{
A character string specifying the type of linear coefficients between x and set to be computed. The default "cor" computes the replicability for the correlations between x and set. The option "cov" computes the replicability for covariances. The option "XY" computes the replicability for the betas when X predicts Y. The option "YX" computes the replicability for the betas when Y predicts X.
}
  \item{CI}{
A numeric between .00 and 1.00 indicating the desired confidence level.
}
  \item{CItype}{
A character string of either "xci" or "aci" specifying the the type of confidence interval to compute based on Koning & Franses (2003). 
}
  \item{minval}{
A numeric indicating the minimum level of replicability to be returned.
}
}
\details{
Sherman and Wood (2014) suggest that one way to estimate the replicability of a vector of correlation coefficients between a variable of interest (x) and a set of other variables (set) is to 1) Z-score all variables, 2) multiply the Z-scored variable of interest by the Z-scores for each of the variables in set, 3) transpose the resultant matrix of cross-products and compute cronbach's alpha on this matrix. This function does just that and includes options for getting replicability coefficients for regression slopes and covariances.
}
\value{
\item{N }{The sample size}
\item{Average R }{The average magnitude of correlations between x and set }
\item{Alpha }{The estimated alpha reliability }
\item{Upper Limit }{The Upper Limit of the CI around the split-half reliability}
\item{Lower Limit }{The Lower Limit of the CI around the split-half reliability}

}
\references{
Sherman, R. A. & Wood, D. (2014). Estimating the expected replicability of a pattern of correlations and other measures of association. Multivariate Behavioral Research. 49(1), 17-40.
Koning, A. J. & Franses, P. H. (2003). Confidence Intervals for Cronbach's Alpha Coefficient values. ERIM Report Series Reference No. ERS-2003-041-MKT. Available at SSRN: http//ssrn.com/abstract=423658 
}
\author{
Ryne A. Sherman
}

\seealso{
\code{\link{vector.splithalf}}
\code{\link{splithalf.r}}
}
\examples{
data(RSPdata)
	# Is the pattern of relationships between self reported 
	#extraversion and behavior replicable?
RSPdata$sEXT
data(beh.comp)
head(beh.comp)
vector.alpha(RSPdata$sEXT, beh.comp) #alpha = .666
	# Might also try vector.splithalf
vector.splithalf(RSPdata$sEXT,beh.comp) # split-half reliability = .684
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ replicability }
\keyword{ alpha }% __ONLY ONE__ keyword per line
