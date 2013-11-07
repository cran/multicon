\name{vector.splithalf}
\alias{vector.splithalf}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Split-half Repicability of a Vector (pattern) of Correlations
}
\description{
Computes the split-half replicability of the vector of linear coefficients (e.g. correlations, covariances) between a single variable (x) and a set of other variables (set).
}
\usage{
vector.splithalf(x, set, typ = "cor", sims = 100, 
graph = TRUE, CI = 0.95, minval = -1, seed = 2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A numeric vector of the same length as nrow(set).
}
  \item{set}{
A data.frame or matrix of which each column is to be related with x.
}
  \item{typ}{
A character string specifying the type of linear coefficients between x and set to be computed. The default "cor" computes the replicability for the correlations between x and set. The option "XY" computes the replicability for the betas when X predicts Y. The option "YX" computes the replicability for the betas when Y predicts X. The option "betas" computes the replicabilities for both X predicting Y and Y predicting X. Finally, the option "all" computes the replicability for the correlations and the betas.
}
  \item{sims}{
A numeric specifying the number of random splithalves to generate to estimate the true splithalf replicability.
}
  \item{graph}{
A logical indicating whether a graph displaying the the random splithalf values should be printed.
}
  \item{CI}{
A numeric between 0.0 and 1.0 indicating the desired confidence interval for the estimated replicability coefficient.
}
  \item{minval}{
A numeric indicating the minimum replicability value allowed.
}
  \item{seed}{
A numeric specifying the random seed to be used. If set to FALSE, no seed is used.
}
}
\details{
Sherman and Wood (2013) suggest that one way to estimate the replicability of a vector of correlation coefficients between a variable of interest (x) and a set of other variables (set) is to 1) divide one's sample into two equal halves, 2) compute the the correlations between 'x' and 'set' for both samples, 3) compute the correlation between the two resultant vectors of correlations, and 4) adjust the resultant split-sample correlation up using the spearman-brown prophecy formula. This function repeats this procedure "sims" times and returns the average result along with confidence intervals. In addition, this function includes options for getting a replicability coefficient for regression slopes (betas).
}
\value{

\item{N }{The sample size}
\item{Split-half r }{The estimated split-half reliability }
\item{SE}{Standard Error of the estimate}
\item{Lower Limit }{The Lower Limit of the CI around the split-half reliability}
\item{Upper Limit }{The Upper Limit of the CI around the split-half reliability}

}
\references{
Sherman, R. A. & Wood, D. (in press). Estimating the expected replicability of a pattern of correlations and other measures of association. Multivariate Behavioral Research.

}
\author{
Ryne A. Sherman
}

\seealso{
\code{\link{vector.alpha}}
\code{\link{splithalf.r}}
}
\examples{
data(RSPdata)
data(beh.comp)
	# Is the pattern of relationships between self reported extraversion and behavior replicable
RSPdata$sEXT
head(beh.comp)
vector.splithalf(RSPdata$sEXT, beh.comp) #split-half reliability = .684
	# Might also compare with vector.alpha
vector.alpha(RSPdata$sEXT, beh.comp)	#alpha = .665

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ split-half reliability}
\keyword{ replicability }% __ONLY ONE__ keyword per line
