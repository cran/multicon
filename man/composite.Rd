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
composite(set, nomiss = 0.8, tr = 0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{set}{
A matrix or data.frame of the scores in the columns to be averaged 
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
  # We will first form a composite extraversion variable using
  # BFI scores. 
    # Three items need to be reverse scored
sBFI6r <- 6 - RSPdata$sBFI6
sBFI21r <- 6 - RSPdata$sBFI21
sBFI31r <- 6 - RSPdata$sBFI31
    # Now put them all into one data.frame
ext.vars <- data.frame(RSPdata$sBFI1, sBFI6r, RSPdata$sBFI11, 
	RSPdata$sBFI16, sBFI21r, RSPdata$sBFI26, sBFI31r, RSPdata$sBFI36)
head(ext.vars) # Looks good
ext.comp <- composite(ext.vars)
ext.comp
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{composite}
