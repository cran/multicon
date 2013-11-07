\name{temp.match}
\alias{temp.match}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Template Matching
}
\description{
Returns the pearson correlation for each row in y.set with a given numeric vector 'template' for both the overall (raw) scores in y.set and the distinctive scores in y.set after using linear regression to remove the mean profile in y.set.
}
\usage{
temp.match(template, y.set, nomiss = 1, distinct = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{template}{
A numeric vector of length equal to the number of columns of y.set to be correlated with each row of y.set
}
  \item{y.set}{
A data.frame or matrix of which rows are to be correlated with template
}
  \item{nomiss}{
A numeric element between .00 and 1.00 specifying the proportion values in y.set required to be complete before NA is returned instead of the the correlation. The default of 1.00 means that any missing case returns a result of NA.
  }
  \item{distinct}{
A logical indicating whether distinctive profile correlations (agreement) between template and y.set should be computed.
}
}
\details{
For each observational unit in y.set its correlation with template is returned. If the proportion of valid values for an observational unit is less than nomiss NA is returned for that observational unit. If the distinct option is set to TRUE, this function also returns the "distinctive" correlations to the template after statistically removing the mean profile in y.set from each profile in y.set.
}
\value{
If distinct = FALSE:
Returns a vector or template match scores corresponding to each row in y. 
If distinct = TRUE: 
A list of length 2:
  \item{yNorm}{ A vector containing the normative (average) profile of y.set }
  \item{Matches}{ A data.frame containing the Overall and Distinctive template match scores }


}

\author{
Ryne A. Sherman
}

\seealso{
\code{\link{Profile.r}}
\code{\link{Profile.reg}}
\code{\link{temp.resid}}
\code{\link{temp.match.rep}}
}
\examples{
data(caq)
data(opt.temp)
	# Template Matching
    # Sometimes we want to know how closely each Profile matches a theoretically
    # or empirically derived Profile (i.e., a template).
    # Here is the template for the optimally adjusted person in the CAQ.
opt.temp 
temp.match(opt.temp, caq)  # The overall template match scores
temp.match(opt.temp, caq, distinct=TRUE) # Both overall and distinctive template match scores
    # The replicability (reliablity) of the template match scores can also be estimated
temp.match.rep(opt.temp,caq)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Template Matching }

