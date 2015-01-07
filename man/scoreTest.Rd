\name{scoreTest}
\alias{scoreTest}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Scoring Multiple Tests, Scales, or Composites
}
\description{
A function for scoring tests, measures, or questionnaires
}
\usage{
scoreTest(items, keys, Zitems = FALSE, maxScore = NULL, minScore = NULL, 
	rel = FALSE, nomiss = .8, tr = 0, item.names = NULL, check.keys=TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{items}{
A data.frame containing the items or questions on the test or measure.
}
  \item{keys}{
A list containing the scoring keys for each scale or construct to be scored from the test or measure. Each object in the list consists of a single numeric vector indicating the column position of 'items' belonging to that scale. Placing a negative sign in front of the column number indicates that this item should be reverse scored.
}
  \item{Zitems}{
A logical indicating whether the items should be standardized (Z-scored) prior to the computation of scale scores.
}
  \item{maxScore}{
A numeric element indicating the maximum possible score on the scales used to rate the items. Useful when (a) there are items that need to be reverse scored and (b) the maximum score on a rating scale is never used. In all other cases this is not needed.
}
  \item{minScore}{
A numeric element indicating the minimum possible score on the scales used to rate the items. Useful when (a) there are items that need to be reverse scored and (b) the minimum score on a rating scale is never used. In all other cases this is not needed.
}
  \item{rel}{
A logical indicating whether reliability statistics should be computed for each scale.
}
  \item{nomiss}{
A numeric between 0 and 1 indicating the proportion of the data that must be present to compute a scale score for a particular observation. Any subject with fewer than this proportion of valid data points will recieve NA. 
}
  \item{tr}{
A numeric between 0 and 1 indicating the amount of trimming to be done when computing a scale score.
}
  \item{item.names}{
A character vector indicating the names for the items. If left NULL, the names provided in keys will be used.
}
  \item{check.keys}{
A logical indicating whether, when calculating reliabilities, the function should check for items negatively correlated with the scale and automatically reverse them for the alpha calculation. Generally, with this function items should already be scored in the proper direction. Thus, this serves as a warning that items may be miskeyed.   
}
 }         
\details{
This function computes mean scores for each of the scales provided in the keys list. If rel=TRUE, it also computes the reliabilites for the composite scores based on the keys list.
}
\value{ If rel=FALSE, then a matrix containing the composite or scale scores is returned. If rel=TRUE, a list containing...
  \item{rel}{The reliability statistics for each composite or scale}
  \item{scores}{The composite or scale scores.}
}

\author{
Ryne A. Sherman
}
\seealso{
\code{\link{plotProfile}}
\code{\link{meanif}}
\code{\link{scoreItems}}
}

\examples{
data(bfi)
keys.list <- list("agree"=c(-1,2,3,4,5),
  "conscientious"=c(6,7,8,-9,-10),"extraversion"=c(-11,-12,13,14,15),
  "neuroticism"=c(16,17,18,19,20),"openness"=c(21,-22,23,24,-25))
out <- scoreTest(bfi, keys.list, nomiss=0, maxScore=6, minScore=1)
outZ <- scoreTest(bfi, keys.list, Zitems=TRUE, nomiss=0)
describe(out) # Descriptives of Scale Scores
describe(outZ)
outR <- scoreTest(bfi, keys.list, nomiss=0, rel=TRUE, maxScore=6)
outR$rel # Scale reliabilities
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ item scoring }
\keyword{ composite }% __ONLY ONE__ keyword per line
