\name{plotProfile}
\alias{plotProfile}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Visualizing Profiles of Scores
}
\description{
A function for plotting entire profiles of scores for individual observations (e.g., personality profiles)
}
\usage{
plotProfile(dat, rows = NULL, col = "black", grid = TRUE, grid.col = "lightgray",
	 grid.lty = "dotted", item.names = NULL, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{
A data.frame containing the profiles to be plotted.
}
  \item{rows}{
A numeric vector indicating the desired rows in dat to be plotted. If left NULL, then all rows in dat will be plotted.}
  \item{col}{
A character vector indicating the colors for the lines. One color for each row should be provided.}
  \item{grid}{
A logical indicating if a vertical grid on the x-axis tick marks should be drawn.}
  \item{grid.col}{
A character element indicating the color of grid.
}
  \item{grid.lty}{
A character element indicating the line type of grid.
}
  \item{item.names}{
A character vector indicating the names for the items. If left NULL, the names provided in dat will be used.
}
  \item{\dots}{
Other graphical arguments passed to the plot() function.
}
}
\details{
This function plots the profile of scores across all of the variables (constructs) in dat. This is useful for quickly spotting similarity and differences in profiles for two or more observations.}

\author{
Ryne A. Sherman
}
\seealso{
\code{\link{scoreTest}}
\code{\link{meanif}}
\code{\link{scoreItems}}
}

\examples{

data(bfi)
keys.list <- list("agree"=c(-1,2,3,4,5),
  "conscientious"=c(6,7,8,-9,-10),"extraversion"=c(-11,-12,13,14,15),
  "neuroticism"=c(16,17,18,19,20),"openness"=c(21,-22,23,24,-25))
out <- scoreTest(bfi, keys.list, nomiss=0, maxScore=6, minScore=1)
plotProfile(out, rows=1:3, xlab="", ylab="Score", col=c("red", "blue", "green"),
         main="Big 5 Profiles for Three Subjects", ylim=c(1,6), item.names=names(out))
legend("bottomleft", legend=rownames(bfi)[1:3], lty=1, col=c("red", "blue", "green"), bty="n")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ item scoring }
\keyword{ composite }% __ONLY ONE__ keyword per line
