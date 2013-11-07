\name{lin.coef}
\alias{lin.coef}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Linear Coefficients
}
\description{
Returns the slope and intercept for x predicting y
}
\usage{
lin.coef(x, y, out = "both", nomiss = 0.8)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A numeric vector of the same length as y
}
  \item{y}{
A numeric vector of the same length as x
}
  \item{out}{
A character vector specifying whether the result should return just the intercept ("int"), just the slope ("slope") or both ("both") which defaults to "both"
}
  \item{nomiss}{
A numeric between .00 and 1.00 specifying the proportion of x-y pairs required to be complete before NA is returned instead of the regression coefficients. The default of .80 means that if more than 20 percent of the x-y pairs are incomplete an NA will be returned.
}
}
\details{
This function is largely designed to increase computation efficiency for getting regression coefficients. For instance, this function is called by the Profile.reg function (see Profile.reg).
}
\value{

 \item{b0 }{intercept of the regression line from y predicted from x }
 \item{b1 }{slope of the regression line frome y predicted from x }

}

\author{
Ryne A. Sherman
}

\seealso{
\code{\link{Profile.reg}}
}
\examples{
data(RSPdata)
	# Lets predict self reported extraversion from gender
lin.coef(RSPdata$ssex,RSPdata$sEXT)
	# confirm that these numbers match the results from lm()
lm(sEXT ~ ssex, data = RSPdata)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ linear regression }
\keyword{ coefficients }% __ONLY ONE__ keyword per line
