\name{horn}
\alias{horn}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Horn's Parallel Analysis
}
\description{
Conduct's Horn's (1965) parallel analysis for determining the number of principal components
}
\usage{
horn(set, sims = 100, nomiss = 1, graph = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{set}{
 \code{A data.frame containing the variables to be analyzed} 
}
  \item{sims}{
 \code{A numeric indicating the number simulated data sets to use} 
}
  \item{nomiss}{
\code{A numeric from 0 to 1.00 indicating the percentage of data that must be valid (non-missing) for each case for it to be included in the analysis.}
}
  \item{graph}{
\code{A logical indicating whether the results should be displayed graphically or not}
}
}
\details{
Horn's (1965) method of determining the number of factors to extract uses bootstrap style resampling of the original data matrix to create a sample data matrix. The eigenvalues for this data matrix are then computed and stored. This process is repeated "sims" times and the average of the resulting eigenvalues is taken to indicate the vector of eigenvalues that would be expected by random data. Horn suggested that one should extract as many factors as have eigenvalues greater than the eigenvalues expected by random data.
}
\value{
Prints the number of components suggested and the number of cases deleted due to missingness. If graph=T a Scree Plot is graphed.
}
\references{
Horn, J. (1965) A rationale and test for the number of factors in factor analysis. Psychometrika, 30, 179-185.
}
\author{
Ryne A. Sherman
}

\seealso{
\code{\link[psych]{fa.parallel}}
}
\examples{
data(bfi.set)	# the Big Five Personality Inventory 
horn(bfi.set) #now we can see how many components are suggested
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Parallel Analysis }
\keyword{ Components }% __ONLY ONE__ keyword per line
