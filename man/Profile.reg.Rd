\name{Profile.reg}
\alias{Profile.reg}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Profile Regression Coefficients 
}
\description{
Returns the regression coefficients for each observation (row) with item pairs making up the columns in x.set and y.set.
}
\usage{
Profile.reg(x.set, y.set, center = "group", std = FALSE, nomiss = 0.8)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x.set}{
A data.frame or matrix, with the same dimensions as y.set, of which each row is a predictor of the corresponding row in y.set.
}
  \item{y.set}{
A data.frame or matrix, with the same dimensions as x.set, of which each row is to be predicted by the correpsonding row in x.set.
}
  \item{center}{
A character string specifying the type of centering to be done. If "group" (default) is used then each column in x.set is centered on its own column mean. If "grand" is used then each column in x.set is centered on the mean of all data in x.set. If "none" is used then no centering is done.  }
\item{std}{
A logical vector indicating whether variables should be standardized prior to analysis. The default option (FALSE) does no standardizing. Using TRUE standardizes both the variables in x.set and y.set with centering determined by the center="option".
}
  \item{nomiss}{
A numeric between .00 and 1.00 specifying the proportion of x-y pairs required to be complete before NA is returned instead of the regression coefficients. The default of .80 means that if more than 20 percent of the x-y pairs are incomplete an NA will be returned.
}
}
\details{
For each observational unit, the regression coefficients (slope and intercept) between its variables in x.set and y.set are returned. If fewer than 'nomiss' of the x-y pairs of observations are valid (complete) then NA will be returned for both coefficients.
}
\value{
Returns a data.frame with 2 columns
\item{Intercepts }{Regression Intercepts}
\item{Slopes }{Regression Slopes}
%% ...
}
\author{
Ryne A. Sherman
}

\seealso{
\code{\link{Profile.r}}
\code{\link{temp.match}}
\code{\link{lin.coef}}
}
\examples{
data(acq1)
data(caq)
	#Lets get the regression coeficients for 
	#predicting aquaintance California Adult Q-Set (CAQ) 
	#personality ratings from #self-report CAQ ratings 
Profile.reg(caq, acq1)
	# Get descriptives for the results
describe(Profile.reg(caq, acq1)) 
	
	}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ regression }
\keyword{ profile agreement }

