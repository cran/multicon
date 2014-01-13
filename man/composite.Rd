\name{composite}
\alias{composite}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Composite
}
\description{
Returns a mean composite for each observation (row) in the set 
}
\usage{
composite(set, R = NULL, Zitems = FALSE, maxScore = NULL, rel=FALSE, nomiss = 0.8, tr = 0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{set}{
A matrix or data.frame of the scores in the columns to be averaged 
}
	\item{R}{
A numeric vector specifying the columns in set that should be reverse scored prior to averaging. 
}
  \item{Zitems}{
A logical indicating whether the items should be standardized (Z-scored) before creating a composite. This is probably most useful when items have been measured on different scales.
}
	\item{maxScore}{
A numeric element indicating the maximum possible score on each scale. If R = NULL then this is not needed. If not provided, composite will try to find the maximum possible score on its own.
}
\item{rel}{
A logical indicating whether the reliability information (alpha, avg r, etc.) for the composite should be printed (not returned however). 
}
  \item{nomiss}{
A numeric vector specifying the proporiton of valid cases in set (i.e. data that must not be NA) for the mean to be returned
}
  \item{tr}{
Amount of trimming to be done before calculating the mean
}
}
\details{
This function is used to create a unit-weighted composite of the variables listed in the columns of the matrix or data.frame "set" for each row. The nomiss option lets one specify the proportion of valid cases required for the composite mean to be computed. By default, the mean is computed if at least 80 precent of the  data in the the row are valid, the mean results otherwise NA results.
}
\value{
Returns a list of composite scores corresponding to each row of 'set'
}
\author{
Ryne A. Sherman
}


\examples{
data(RSPdata)
names(RSPdata)
# Forming a composite:
  # We will form a composite extraversion variable using BFI scores.
    # First put the variables into one data.frame
ext.vars <- data.frame(RSPdata$sBFI1, RSPdata$sBFI6, RSPdata$sBFI11,
	RSPdata$sBFI16, RSPdata$sBFI21, RSPdata$sBFI26, RSPdata$sBFI31, RSPdata$sBFI36)
head(ext.vars) # Looks good
    # Three items need to be reverse scored
ext.comp <- composite(ext.vars, R = c(2,5,7), rel = TRUE)
ext.comp
    # Let's say we want to include the CAQ item "04 - Is a talkative Individual" in our
    # extraversion composite. But is is measured on a 1 to 9 scale while the BFI variables
    # are measured on a 1 to 5 scale. We should set Zitems=TRUE to Z-score all of the
    # items before compositing.
ext.comp2 <- composite(data.frame(ext.vars, RSPdata$sCAQ004), 
	R = c(2,5,7), rel= TRUE, Zitems = TRUE)
describe(ext.comp2) # mean is zero
  
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{composite}
