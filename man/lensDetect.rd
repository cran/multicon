\name{lensDetect}
\alias{lensDetect}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Signal Detection Analyses for Lens Model Output
}
\description{
A function for computing signal detection statistics from an object of class LensMod.
}
\usage{
lensDetect(x, crit)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{An object of class LensMod.}
  \item{crit}{A critical p-value for the validity and utilization coefficients to be deemed to be "valid" and "utilized" for the purposes of the signal detection analysis. Those cues with p-values less than crit will be deemed valid.}
}
\details{
A data.frame containing the Signal Detection outputs (see Fielding & Bell, 1997).
}
\value{
A data.frame containing the Signal Detection outputs (see Fielding & Bell, 1997).
}
\references{
Fielding, A. H., & Bell, J. F. (1997). A review of methods for assessment of prediction errors in conservation presence/absence models. Environmental Conservation, 24(1), 38-49.
}
\author{
Ryne A. Sherman
}
\seealso{
\code{\link{lensModel}}
\code{\link{print.lensMod}}
}
\examples{

data(lensData)
DIAMONDS.in <- lensData[,32:39] # Self-ratings on 8 Situation Characteristics
DIAMONDS.ex <- lensData[,40:47] # Coder-ratings on 8 Situation Characteristics
CUES <- lensData[,3:31]         # Coded Situation Cues

mod <- lensModel(DIAMONDS.in, DIAMONDS.ex, CUES) # Get the lens statistics
lensDetect(mod)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Lens Model }
\keyword{ Signal Detection }

