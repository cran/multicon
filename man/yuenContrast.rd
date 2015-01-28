\name{yuenContrast}
\alias{yuenContrast}
\alias{yuenContrast.default}
\alias{yuenContrast.formula}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Generalized Yuen's T-tests
}
\description{
Computes a t-test for multiple groups using a generalization of Yuen's (1974) method
for trimmed t-tests. In the case of K > 2 groups, a t-contrast use calculated based
on the given contrast weights.
}
\usage{
yuenContrast(IV, ...)

## Default Method
\method{yuenContrast}{default}(IV, DV, wgt = c(1, -1), tr = .2, 
	alpha = .05, EQVAR = FALSE, alternative = "unequal", ...)

## Method for class 'formula'
\method{yuenContrast}{formula}(formula, data = NULL, wgt = c(1, -1), tr = .2, 
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
  \item{tr}{
A numeric element between .00 and < .50 specifying the amount of trimming to be used.
}
  \item{alpha}{
A numeric element > .00 and < 1.00 specifying the Type I error rate.
}
  \item{EQVAR}{
A logical indicating whether equal variances amongst the groups should be assumed.
Defaults to FALSE (Yuen's Method).
}
  \item{alternative}{
A character vector specifying the alternative hypothesis. Must be one of "unequal", "greater", or "less".
}
  \item{...}{
Further arguments to be passed to or from methods.
}
}         

\details{
This function computes a t-value based on Yuen's (1974) method for calculating T 
for trimmed means if tr is greater than 0 and Welch's method for tr=0 and EQVAR=FALSE. 
The wgt option allows one to specify contrast weights to test hypotheses with more
than 2 levels of an IV. By default it tests the hypothesis that two means are unequal.
If a directional hypothesis is known ahead of time, use "greater" to predict that
higher contrast weights have higher means and "less" to predict the opposite. 
A robust measure of the mean differences or the contrast is obtained by using 
some level of trimming. By setting the EQVAR option to TRUE degrees of freedom 
are consistent with Student's method. If EQVAR is FALSE (default) then degrees
of freedom are calculated using the Welch-Sattertwaite approximation. The entire
family of possible T-test equations can be found here: 

http://rynesherman.com/T-Family.doc
}
\value{A list containing...
  \item{Ms}{A data.frame with the sample size, mean, and weight for each group.}
  \item{test}{A data.frame with the test statistic (stat), the degrees of freedom (df), 
              the critical value for the test statistic (crit), and the p-value}
}

\references{
Yuen, K. K. (1974). The two-sample trimmed t for unequal population variances. Biometrika, 61, 165-170.
Student (1908). The probable error of a mean. Bimetrika, 6, 1-25. 
}

\author{
Ryne A. Sherman
}
\seealso{
\code{\link{winvar}}
\code{\link{t.test}}
\code{\link{tContrast}}
}

\examples{
dv <- c(rnorm(30, mean=1, sd=2), rnorm(20))
iv <- c(rep(1,30),rep(2,20))

  # Student's t-test (assuming equal variances)
t.test(dv ~ iv, var.equal=TRUE)
  # Welch's t-test (not assuming equal variance)
t.test(dv ~ iv, var.equal=FALSE)
  # Yuen's t-test with 20% trimming assuming equal variances
yuenContrast(iv, dv, EQVAR=TRUE)
  # Yuen's t-test with 20% trimming not assuming equal variances
yuenContrast(iv, dv, EQVAR=FALSE)
  # Same as Student's t-test using yuenContrast
yuenContrast(iv, dv, EQVAR=TRUE, tr=0)
  # Same as Welch's t-test using yuenContrast
yuenContrast(iv, dv, EQVAR=FALSE, tr=0)

  # Contrast with 3 Groups
dv <- c(rnorm(30), rnorm(20, mean=-.5), rnorm(10, mean=-1))
iv <- c(rep("c",30), rep("b", 20), rep("a", 10))
    # With no trimming (t-contrast with Welch-Sattertwaite DFs)
yuenContrast(iv, dv, wgt=c(1, 0, -1), tr=0)
    # With 20% trimming
yuenContrast(iv, dv, wgt=c(1, 0, -1), tr=.2)
    # With the formula method
yuenContrast(dv ~ iv, wgt = c(1, 0, -1))


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ t test }
\keyword{ contrast }
\keyword{ robust }
\keyword{ yuen }% __ONLY ONE__ keyword per line
