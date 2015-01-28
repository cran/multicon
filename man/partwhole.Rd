\name{partwhole}
\alias{partwhole}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Part-Whole Correlation
}
\description{
Returns the part-whole correlations between an item or the mean of all possible groups of nitems and the composite of the full set of items.
}
\usage{
partwhole(x, nitems = 1, nomiss = 0.8)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A matrix or data.frame containing the variables (in columns) thought to form a composite.
}
  \item{nitems}{
A numeric element indicating the number of items desired for each possible group of items.
}
  \item{nomiss}{
A numeric between .00 and 1.00 indicating the proportion of scores that must be non-missing for each composite before a score of NA is returned.
}
}
\details{
The purpose of this function is to determine which subset of items, when formed into a unit-weighted composite, most strongly correlate with both a unit-weighted and a components weighted composite of the full set of items. For example, if one has an 8 item scale and wants to reduce it to a 4 item scale, it might be interest to know which 4 items can be composited and correlate most highly with the composite from the full set of 8 items. It turns out there are 70 ways to form 4-item composites from 8 total items. This function creates all 70 of those composites and correlates each with both a unit weighted composite from the original 8 items and a components scored (1 principal component) composite of the original 8 items. One can then look at the output to determine which 4-item composite best correlated with the full scale composite.
}
\value{
A matrix with 2 rows and K columns where K is the number of possible subset combinations.
The column names indicate which items (separated by an underline) make up the subset
combination. The first row (UnitWgt) is the result using a unit weighted composite for the
total set of items and the second row (Component) is the result using principle component scores
for the total set of items. 
}

\author{
Ryne A. Sherman
}
\seealso{
\code{\link{composite}}
}
\examples{
data(bfi.set)
  # Imagine we want to find the best two-item composite that correlates
  # highest with the full 8 items available to measure extraversion. 
  # Three (of the extraversion) items need to be reverse scored
sBFI6r <- 6 - bfi.set$sBFI6
sBFI21r <- 6 - bfi.set$sBFI21
sBFI31r <- 6 - bfi.set$sBFI31
  # Now put them all into one data.frame
ext.vars <- data.frame(bfi.set$sBFI1, sBFI6r, bfi.set$sBFI11, 
	bfi.set$sBFI16, sBFI21r, bfi.set$sBFI26, sBFI31r, bfi.set$sBFI36)
head(ext.vars) # Looks good
  # Now compute the parwhole correlation for all possible 2-item composites
partwhole(ext.vars, 2)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ part-whole correlation }
\keyword{ composite }% __ONLY ONE__ keyword per line
