\name{diffPlot}
\alias{diffPlot}
\alias{diffPlot.default}
\alias{diffPlot.formula}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Difference Plot
}
\description{
A function for creating a Difference Plot between two groups.
}
\usage{
diffPlot(x, ...)

## Default Method
\method{diffPlot}{default}(x, y, plotFUN=mean, errFUN=c("ci", "se", "sd"), conf=.95, 
  grp.names=NULL, var.equal=FALSE, paired=FALSE, ylim=NULL, ...)
  
## Method for class 'formula' 
\method{diffPlot}{formula}(formula,data, plotFUN=mean, errFUN=c("ci", "se", "sd"), conf=.95, 
  grp.names=NULL, var.equal=FALSE, paired=FALSE, ylim=NULL, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A single variable with exactly two levels indicating the grouping factor. If x is a grouping factor, a second argument  'y' must be passed with as numeric vector of data values to be plotted.
}
\item{y}{
Numeric vector of data values to be plotted
}
  \item{formula}{
A formula of the form lhs ~ rhs where lhs is a numeric vector containing the data values and rhs is a variable with exactly two levels giving the corresponding groups.
}
\item{data}{
A data frame containing the variables in the formula.
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
A character vector of length 2 providing the names for the two different groups (conditions, time-points).
}
  \item{var.equal}{
A logical indicating whether it should be assumed that the variances of the two groups on the DV are equal. Defaults to FALSE.
}
  \item{paired}{
A logical indicating whether the data are paired.
}
 \item{ylim}{
The limits of the plot on the y-axis.
}
  \item{\dots}{
Other arguments passed to the plot() and axis() functions including graphing parameters (e.g. 'col').
}
}
\details{
This function creates a difference plot with error bars using raw data as input for either two independent group or dependent measures designs. This is a preferred way of graphical displaying group means that are directly compared (rather than bargraphs) because it provides information about the estimated size of the difference and the accuracy of that estimate (Cumming, 2012).
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
  # Independent Groups, default method
y <- rnorm(100)
g <- rep(1:2, each=50)
diffPlot(g, y, ylab="DV", xlab="", main="Plot of Means with Floating Axis for Mean Difference", 
grp.names=c("Control", "Experimental"), sub="Arms Indicate 95 Percent CIs")
  # Independent Groups, formula method
  df=data.frame(y=y,g=g)
diffPlot(y ~ g, data=df, ylab="DV", xlab="", 
main="Plot of Means with Floating Axis for Mean Difference", 
grp.names=c("Control", "Experimental"), sub="Arms Indicate 95 Percent CIs")
  # Dependent Groups
library(mvtnorm)
myData <- rmvnorm(100, mean=c(0,.4), sigma=matrix(c(1,.8,.8,1), nrow=2, byrow=TRUE))
diffPlot(myData[,1], myData[,2], paired=TRUE, ylab="DV", xlab="", 
	main="Plot of Dependent Means with Floating Axis for Mean Difference", 
grp.names=c("Time 1", "Time 2"), sub="Arms Indicate 95 Percent CIs")
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ difference plot }
\keyword{ bargraph }% __ONLY ONE__ keyword per line
