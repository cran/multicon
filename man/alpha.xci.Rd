\name{alpha.xci}
\alias{alpha.xci}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Alpha Confidence Interval
}
\description{
Computes the exact confidence interval for Cronbach's alpha if the item scores have a joint multivariate distribution, following the method outlined by Koning & Franses (2003). 
 }
\usage{
alpha.xci(x, k, n, CI = 0.95)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
An alpha coefficient to compute a confidence interval around.
}
  \item{k}{
The number of items on which alpha was computed. 
}
  \item{n}{
The number of sampling units (observations) on which alpha was computed.
  }
  \item{CI}{
A numeric element between .00 and 1.00 indicating the desired confidence level.
}
}
\details{
Koning & Franses (2003) describe several methods for computing confidence intervals around Cronbach's alpha coefficient. This function returns what Koning and Franses (2003) refer to as the exact confidence interval for alpha if the item scores have a joint multivariate distribution. The confidence interval is asymptomic and not necessarily symmetrical.
For more info, see Koning and Franses (2003). 
}
\value{

\item{comp1 }{Lower Limit of confidence interval}
\item{comp2 }{Upper Limit of confidence interval}
%% ...
}
\references{
Koning, A. J. & Franses, P. H. (2003). Confidence Intervals for Cronbach's Alpha Coefficient values. ERIM Report Series Reference No. ERS-2003-041-MKT. Available at SSRN: http//ssrn.com/abstract=423658  
}
\author{
Ryne A. Sherman
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{alpha.aci}}
\code{\link{vector.alpha}}
}
\examples{
	#Compute the asymptotic CI for an observed Cronbach's alpha 
	#of .7 on 200 observaitons for a 10 item scale'
alpha.xci(.7,10,200)


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ alpha }
\keyword{ confidence interval }
