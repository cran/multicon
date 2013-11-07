\name{temp.resid}
\alias{temp.resid}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Residuals from Template Prediction 
}
\description{
Returns the residuals for each row of y.set as predicted by the vector of values in template.
}
\usage{
temp.resid(template, y.set, nomiss = 0.8)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{template}{
A vector of values used to predict the values in the row's of of y.set. The length should be equal to nrow(y.set).
}
  \item{y.set}{
A data.frame or matrix of which the row's are to be predicted by the values in template
}
  \item{nomiss}{
A numeric element between .00 and 1.00 specifying the proportion of x-y pairs required to be complete before NA is returned instead of the regression coefficients. The default of .80 means that if more than 20 percent of the x-y pairs are incomplete an NA will be returned.
  }
}
\details{
The vector of scores in template is used to predict each row in y.set and the resulting residuals are returned.
}
\value{
A data.frame with the same dimensions as y.set is returned containing the residual values after predicting y.set from the template.
}

\author{
Ryne A. Sherman
}

\seealso{
\code{\link{Profile.reg}}
\code{\link{Profile.resid}}
\code{\link{temp.match}}
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
	# Now if we want what is left after removing the template from each profile...
caq.opt.resids <- temp.resid(opt.temp, caq) 
head(caq.opt.resids)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ template matching }
\keyword{ residuals  }% __ONLY ONE__ keyword per line
