\name{tContrast}
\alias{tContrast}
\alias{tContrast.default}
\alias{tContrast.formula}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Constrast T-tests
}
\description{
Computes a t-test for multiple groups using a given set of contrast weights.
}
\usage{
tContrast(IV, ...)

## Default Method
\method{tContrast}{default}(IV, DV, wgt = c(1, -1), 
	alpha = .05, EQVAR = FALSE, alternative = "unequal", ...)

## Method for class 'formula'
\method{tContrast}{formula}(formula, data = NULL, wgt = c(1, -1),  
	alpha = .05, EQVAR = FALSE, alternative = "unequal", ...)

}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{IV}{
A factor of the same length as DV containing the independent variable codes.
}
  \item{DV}{
A numeric vector of the same length as IV containing the measured values.
}
\item{formula}{
A formula of the form lhs ~ rhs where lhs is a numeric vector containing the data values and rhs is a variable containing the corresponding groups.
}
\item{data}{
An optional data frame containing the variables in the formula.
}
  \item{wgt}{
A numeric vector containing the contrast weights corresponding to each successive level of the IV.
Defaults to c(1, -1), implying that the first group is expected to have a higher mean
than the second.
}
  \item{alpha}{
A numeric element > .00 and < 1.00 specifying the Type I error rate.
}
  \item{EQVAR}{
A logical indicating whether equal variances amongst the groups should be assumed.
Defaults to FALSE (Welch's Method).
}
  \item{alternative}{
A character vector specifying the alternative hypothesis. Must be one of "unequal", "greater", or "less".
}
  \item{...}{
Further arguments to be passed to or from methods.
}
}

\details{
This function computes a t-contrast for any number of groups based on the
specificed constrast weights (Rosenthal, Rosnow, & Rubin, 2000). By setting the
EQVAR option to TRUE degrees of freedom are consistent with Student's method.
If EQVAR is FALSE (default) then degrees of freedom are calculated using the
Welch-Sattertwaite approximation. The wgt option allows one to specify contrast
weights to test hypotheses with more than 2 levels of an IV. By default it tests
the hypothesis that two means are unequal. If a directional hypothesis is known
ahead of time, use "greater" to predict that higher contrast weights have higher
means and "less" to predict the opposite. For a robust version of this function
see \code{\link{yuenContrast}}. The entire family of possible T-test equations
can be found here:

http://rynesherman.com/T-Family.doc
}
\value{A list containing...
  \item{Ms}{A data.frame with the sample size, mean, and weight for each group.}
  \item{test}{A data.frame with the test statistic (stat), the degrees of freedom (df),
              the critical value for the test statistic (crit), the p-value, and an
              r-contrast (effect size).}
}

\references{
Rosenthal, R., Rosnow, R. L., & Rubin, D. B. (2000). Contrasts and Effect Sizes in
Behavioral Research: A Correlational Approach. Cambridge, UK: Cambridge University Press.
}

\author{
Ryne A. Sherman
}
\seealso{
\code{\link{yuenContrast}}
\code{\link{t.test}}
}

\examples{
dv <- c(rnorm(30, mean=1, sd=2), rnorm(20))
iv <- c(rep(1,30),rep(2,20))

  # Student's t-test (assuming equal variances)
t.test(dv ~ iv, var.equal=TRUE)
  # Welch's t-test (not assuming equal variance)
t.test(dv ~ iv, var.equal=FALSE)
  # tContrast assuming equal variances
tContrast(iv, dv, EQVAR=TRUE)
  # tContrast not assuming equal variances
tContrast(iv, dv, EQVAR=FALSE)

  # Contrast with 3 Groups
dv <- c(rnorm(30), rnorm(20, mean=-.5), rnorm(10, mean=-1))
iv <- c(rep("c",30), rep("b", 20), rep("a", 10))
    # t-contrast with Welch-Sattertwaite DFs
tContrast(iv, dv, wgt=c(1, 0, -1))
    # Compare with yuenContrast with no trimming
yuenContrast(iv, dv, wgt=c(1, 0, -1), tr=0)
    # With the formula method
yuenContrast(dv ~ iv, wgt = c(1, 0, -1))


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ t test }
\keyword{ contrast } % __ONLY ONE__ keyword per line
