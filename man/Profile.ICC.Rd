\name{Profile.ICC}
\alias{Profile.ICC}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Profile Intra-class Correlation
}
\description{
Calculates the Profile intra-class correlations for a single profile (row) and a composite of the profiles (rows), following Shrout and Fleiss (1979), for the corresponding rows in each set provided to the function.

ICC1: Each target is rated by a different judge and the judges are selected at random. (This is a one-way ANOVA fixed effects model and is found by (MSB- MSW)/(MSB+ (nr-1)*MSW))

ICC2: A random sample of k judges rate each target. The measure is one of absolute agreement in the ratings. Found as (MSB- MSE)/(MSB + (nr-1)*MSE + nr*(MSJ-MSE)/nc)

ICC3: A fixed set of k judges rate each target. There is no generalization to a larger population of judges. (MSB - MSE)/(MSB+ (nr-1)*MSE)

Then, for each of these cases, is reliability to be estimated for a single rating or for the average of k ratings? (The 1 rating case is equivalent to the average intercorrelation, the k rating case to the Spearman Brown adjusted reliability.)

ICC1 is sensitive to differences in means between raters and is a measure of absolute agreement.

ICC2 and ICC3 remove mean differences between judges, but are sensitive to interactions of raters by judges. The difference between ICC2 and ICC3 is whether raters are seen as fixed or random effects.

ICC1k, ICC2k, ICC3K reflect the means of k raters. 
}
\usage{
Profile.ICC(set1, set2, ..., omit = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{set1}{
A data.frame or matrix with corresponding rows in set2 and any additional sets passed to the function.
}
  \item{set2}{
A data.frame or matrix with correpsonding rows in set1 and any additional sets passed to the function.
}
  \item{\dots}{
Additional matrices or data.frames with corresponding rows to set1 and set2 passed to the function.
}
  \item{omit}{
A logical indicating whether incomplete cases should be omitted from analysis. If set to FALSE and data are missing, warning(s) will result.
}
}
\details{
This function returns the ICCs for the corresponding rows from set1, set2, and each additional set to passed to the function where single Profile ICCs (ICC[x,1]) and composite ICCs (ICC[x,k]) are computed for each group of corresponding rows in the sets. Follow Shrout and Fleiss (1979) for interpretation of the different ICCs. 
}
\value{
A data.frame containing the above described ICCs.
}
\references{
Shrout, P. E. & Fleiss, J. L. (1979). Intraclass correlations: Uses in assessing rater reliability. Psychological Bulletin, 86, 420-428 
  }
\author{
Ryne A. Sherman
}

\seealso{
\code{\link{get.ICC}}
\code{\link{item.ICC}}

}
\examples{
data(acq1)
data(acq2)
	#lets look at the Profile ICC between two aquaintance ratings of subjects' personality 
names(acq1) 
names(acq2)
Profile.ICC(acq1, acq2)
	#We can get the descriptives for these using describe() from the 'psych' package   
describe(Profile.ICC(acq1, acq2))

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ intraclass correlation }
\keyword{ profile similarity }
\keyword{ agreement }

