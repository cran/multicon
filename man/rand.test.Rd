\name{rand.test}
\alias{rand.test}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Randomization Test
}
\description{
Computes a randomization test for the number of significant correlations and the average absolute r between set1 and set2.
}
\usage{
rand.test(set1, set2, sims = 1000, crit = 0.95, graph = TRUE, seed = 2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{set1}{
A data.frame containing the variable(s) to be correlated with set2. Can be a single vector, but must be converted to a data.frame.
}
  \item{set2}{
A matrix or data.frame containing the variables to be correlated with set1.
}
  \item{sims}{
A numeric indicating the number of randomizations to be conducted.
}
  \item{crit}{
A numeric between 0.0 and 1.0 indicating the critical value at which you will reject the null hypothesis of no relation between set1 and set2.
}
  \item{graph}{
A logical indicating whether graphical output should be returned.
}
  \item{seed}{
A numeric specifying the random seed to be used. If set to FALSE, no seed is used.
}
}
\details{
When correlating a single variable of interest or a set of variables with another set of other variables, one practical consideration is the number of correlations one would expect to find by chance and/or the average absolute r between the two sets of variables. Following Sherman and Funder (2009), this function empirically estimates the sampling distribution for the number of statistically significant correlations and the average absolute r.
}
\value{
A list containing...
\item{AbsR}{
	A vector containing the results for the average absolute r between set1 and set2. Includes the N (for complete cases), the observed average absolute r, the expected average absolute r under a null hypothesis, the standard error of the average absolute r, the p-value of the observed average absolute r, the 99.9 percent upper and lower bound confidence intervals for the p-value, and the critical value for the test to be statistically significant.
	}
\item{Sig}{
  A vector containing the results for the number of significant correlations between set and the set2. Includes the N (for complete cases), the observed number significant, the expected number significant under a null hypothesis, the standard error of the number significant, the p-value of the observed number significant, the 99.9 percent upper and lower bound confidence intervals for the p-value,and the critical value for the test to be statisttically significant. 
	 }
}
\references{
Sherman, R. A. & Funder, D. C. (2009). Evaluating correlations in studies of personality and behavior: Beyond the number of significant findings to be expected by chance. Journal of Research in Personality, 43, 1053-1063.
}
\author{
Ryne A. Sherman
}
\seealso{
\code{\link{q.cor}}, ~~~
}
\examples{
data(caq)
data(beh.comp)
head(caq)
head(beh.comp)
	#Note: In practice 'sims'=1000 is a better baseline
rand.test(caq,beh.comp,sims=100)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ randomization test}

