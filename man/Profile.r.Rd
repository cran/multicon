\name{Profile.r}
\alias{Profile.r}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Profile Correlations
}
\description{
Computes overall and distinctive profile correlations for each observation (row) with item pairs making up the columns in x.set and y.set.
}
\usage{
Profile.r(x.set, y.set, nomiss = 1, distinct = FALSE, alt = "greater")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x.set}{
A data.frame or matrix of the first set of variables with columns corresponding to y.set
}
  \item{y.set}{
A data.frame or matrix of the second set of variables with columns corresponding to x.set
}
  \item{nomiss}{
A numeric between .00 and 1.00 specifying the proportion of x-y pairs required to be complete before NA is returned instead of the profile correlation. The default of 1.00 means that if any values are missing an NA will be returned
}
  \item{distinct}{
A logical indicating whether distinctive profile correlations (agreement) between x.set and y.set should be computed.
}
  \item{alt}{
A character string specifying the alternative hypothesis for tests of overall and distinctive agreement against baseline values. Must be one of "greater" (default), "less" or "two-sided". 
}
}
\details{
When distinct is set to its default FALSE: For each observational unit a correlation between its x.set and y.set of variables is returned. If the observational unit has less than "nomiss" pairs with missing data the function returns NA as the unit's result
 When distinct is set to TRUE: The function does the same analysis a when distinct is set to false, but it provides a number of additional results. Following Furr's (2008) discusison of distinctiveness and normativeness, when distinct is set to TRUE the normative (average) Profile of x.set and y.set is computed. These normative Profiles are then used to predict each Profile in their respective set (i.e., the average Profile of x.set is used to predict each Profile (row) in x.set) using linear regression and the residuals for each set are retained. The correlation between the two normative Profiles is computed and returned. Finally, for each observational unit the correlation between the residualized x.set and the residualized y.set are computed and returned. If the unit has less than "nomiss" pairs with missing data the functions returns NA as the unit's result.
  
}
\value{

\item{xNorm }{The average (with missing values removed) Profile for x.set.}
\item{yNorm }{The average (with missing values removed) Profile for y.set.}
\item{Norm.r }{The correlation between the average x.set and average y.set Profiles.}
\item{Agreement}{A data.frame containing the overall and distinctive Profile correlations.}
\item{Overall}{The column containing the overall Profile agreements. These are the same values as returned by the function when distinct==FALSE.}
\item{Distinctive}{The column containing the distinctive Profile agreements.}	
\item{Test}{A data.frame containing the sample sizes, average Profile agreements, baseline Profile agreements, t-tests against the baseline, and p-values for both Overall and Distinctive Profile correlations.}

}
\references{
Furr, R. M. (2008). A framework for Profile similarity: Integrating similarity, normativeness, and distinctiveness. Journal of Personality, 76(5), 1267-1316.
}
\author{
Ryne A. Sherman
}
\note{
 Furr's (2008) discussion of distinctiveness uses difference scores rather than the regression approach used by this function, but the conceptual idea surrounding "distinctiveness" is similar.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{Profile.reg}}
\code{\link{temp.match}}
\code{\link{temp.resid}}
\code{\link{t.test}}

}
\examples{
data(acq1)
data(caq)
	#Lets look at Profile correlations between self-report California Adult Q-Sort 
	#ratings of personality and Aquaintance ratings of the same person.
head(acq1)
head(caq)
Profile.r(caq, acq1)  # The basic Profile agreements
describe.r(Profile.r(caq, acq1)) # Descriptive Statistics for the Agreements
	# Now let's look at both overall and distinctive agreement
myres <- Profile.r(caq, acq1, distinct = TRUE)
myres
describe.r(myres$Agreement) # The average overall and distinctive agreements
	
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ accuracy }
\keyword{ profile correlations }
\keyword{ agreement }
\keyword{ distinctiveness }

