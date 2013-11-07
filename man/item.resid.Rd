\name{item.resid}
\alias{item.resid}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Item Level Residuals
}
\description{
Returns the residuals of y.set after predicting the values from the corresponding columsn in x.set.
}
\usage{
item.resid(x.set, y.set, nomiss = 0.8)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x.set}{
 A data.frame or matrix, with the same dimensions as y.set, of which each column is a predictor of the corresponding column in y.set.
}
  \item{y.set}{
A data.frame or matrix, with the same dimensions as x.set, of which each column is to be predicted by the correpsonding column in x.set.
}
  \item{nomiss}{
A numeric between .00 and 1.00 specifying the proportion of x-y pairs required to be complete before NA is returned instead of the regression coefficients. The default of .80 means that if more than 20 percent of the x-y pairs are incomplete an NA will be returned.
}
}
\details{
Each column in x.set is used to predict its corresponding column in y.set and the residuals are returned.
}
\value{
A data.frame with the same dimensions as y.set, containing the residual values on each item after predicting the item scores from the values in x.set.
}

\author{
Ryne A. Sherman
}

\seealso{
\code{\link{lin.coef}}
\code{\link{temp.resid}}
\code{\link{Profile.reg}}
}
\examples{
data(caq)
data(RSPdata)
	#Lets predict California Adult Q-Sort scores from extraversion scores 
	#and compute the residual scores on each CAQ item.
head(caq) 
RSPdata$sEXT
dim(caq)
m.sEXT <- matrix(RSPdata$sEXT, nrow = 205, ncol = 100)
head(m.sEXT)
residuals <- item.resid(m.sEXT,caq)
head(residuals) 
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{residuals }

