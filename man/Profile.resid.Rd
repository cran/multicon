\name{Profile.resid}
\alias{Profile.resid}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Residuals
}
\description{
Computes the residuals for each observation (row) where items pairs are the corresponding columns in x.set and y.set.
  }
\usage{
Profile.resid(x.set, y.set, nomiss = 0.8)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x.set}{
A data.frame or matrix, with the same dimensions as y.set, of which each row is a predictor of the corresponding row in y.set.
}
  \item{y.set}{
A data.frame or matrix, with the same dimensions as x.set, of which each row is to be predicted by the correpsonding row in x.set.
}
  \item{nomiss}{
A numeric between .00 and 1.00 specifying the proportion of x-y pairs required to be complete before NA is returned instead of the regression coefficients. The default of .80 means that if more than 20 percent of the x-y pairs are incomplete an NA will be returned.
}
}
\details{
The residuals from predicting the values in each row of y.set from the values in the corresponding row of y.set are returned. If fewer than 'nomiss' of the x-y pairs of observations for a given row are valid (complete) then NA will be returned for all of that row's residuals.
}
\value{
Returns a data.frame of the same size as x.set containing the residual values of y.set after being predicted by x.set.
}

\author{
Ryne A. Sherman
}

\seealso{
\code{\link{Profile.reg}}
\code{\link{lin.coef}}
}
\examples{
data(acq1)
data(caq)
	#Lets get the regression coeficients for predicting aquaintance 
	#California Adult Q-Set (CAQ) personality ratings from #self-report CAQ ratings 
Profile.reg(caq,acq1)
	#We can look at the residuals from those regressions
res.acq <- Profile.resid(acq1, caq)
head(res.acq)

	}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Residual }
\keyword{ Profile Agreement }
\keyword{ Distinctiveness }% __ONLY ONE__ keyword per line
