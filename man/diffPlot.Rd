\name{diffPlot}
\alias{diffPlot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Difference Plot
}
\description{
A function for creating a Difference Plot between two groups.
}
\usage{
diffPlot(DV, grp, plotFUN = mean, errFUN = c("ci", "se", "sd"), 
	conf = 0.95, grp.names = NULL, var.equal = FALSE, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{DV}{
A numeric variable containing raw scores to be summarized in the plot.
}
  \item{grp}{
A single variable with exactly two levels indicating the grouping factor.
}
  \item{plotFUN}{
The function used to create the summary statistic. Usually mean is desired.
}
  \item{errFUN}{
A character element indicating the type of error bars to be calculated. There are four possible choices: "ci" (the default) uses a confidence interval for the mean with level indicated by the conf= argument. "se" uses 1 Standard Error from the mean. "sd" uses 1 Standard Deviation from the mean. NULL indicates no error bars are desired.
  }
  \item{conf}{
A numeric indicating the desired level of confidence if type "ci" is used for the errFUN argument.
}
  \item{grp.names}{
A character vector of length 2 providing the names for the two different groups (conditions).
}
  \item{var.equal}{
A logical indicating whether it should be assumed that the variances of the two groups on the DV are equal. Defaults to FALSE.
}
  \item{\dots}{
Other arguments passed to the plot() and axis() functions including graphing parameters (e.g. 'ylim', 'col').
}
}
\details{
This function creates a two-group difference plots with error bars using raw data as input. This is a preferred way of graphical displaying group means that are directly compared (rather than bargraphs) because it provides information about the estimated size of the difference and the accuracy of that estimate (Cumming, 2012).
}

\references{
Cumming, G. (2012). Understanding the New Statistics: Effect Sizes, Confidence Intervals, and Meta-Analysis. New York: Routledge.
}
\author{
Ryne A. Sherman
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{bargraph}}
\code{\link{egraph}}
}
\examples{
y <- rnorm(100)
g <- rep(1:2, each=50)
diffPlot(y, g, ylab="DV", xlab="", main="Plot of Means with Floating Axis for Mean Difference", 
grp.names=c("Control", "Experimental"), sub="Arms Indicate 95 Percent CIs")
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ difference plot }
\keyword{ bargraph }% __ONLY ONE__ keyword per line
