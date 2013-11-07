\name{egraph}
\alias{egraph}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plotting Summary Statistics with Error Bars 
}
\description{
A function for plotting a summary statistics with error bars.
}
\usage{
egraph(DV, grp = NULL, plotFUN = mean, errFUN = c("ci", "se", "sd"), 
	sides = 2, conf = 0.95, xpoints = NULL, 
	grp.names = NULL, tick = FALSE, ylim = NULL, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{DV}{
A numeric variable containing raw scores to be summarized in the graph.
}
  \item{grp}{
Either (a) a single variable indicating the grouping factor, (b) a list of variables each indicating a different grouping factors, or (c) NULL (default) in which case only a single bar is graphed.
  }
  \item{plotFUN}{
The function used to create the summary statistic. Usually mean is desired.
}
  \item{errFUN}{
A character element indicating the type of error bars to be calculated. There are four possible choices: "ci" (the default) uses a confidence interval for the mean with level indicated by the conf= argument. "se" uses 1 Standard Error from the mean. "sd" uses 1 Standard Deviation from the mean. NULL indicates no error bars are desired.
}
  \item{sides}{
A numeric indicating whether one-sided or two-sided error bars are desired.
}
  \item{conf}{
A numeric between .00 and 1.00 indicating the desired level of confidence if type "ci" is used for the errFUN argument.
}
  \item{xpoints}{
A vector indicating the location on the x-axis for each group. Can be used to create space between certain groups.
}
  \item{grp.names}{
A character vector providing the names for the different groups (conditions).  
}
  \item{tick}{
A logical indicating whether tick marks should be drawn on the x-axis for each group.
}
  \item{ylim}{
A numeric vector of length 2 indicating the lower and upper limits of the y-axis.
}
  \item{\dots}{
Other arguments passed to the plot() function including graphing parameters.
}
}
\details{
This function plots a summary statistic with error bars using raw data as input. This is different from, and often more convenient, than barplot() which requires the use to compute the values to be plotted and error bars outside of the function. This is a preferred form of presenting group means (rather than bargraphs) because bargraphs tend to suggest more accuracy than in reality (Cumming, 2012).}

\references{
Cumming, G. (2012). Understanding the New Statistics: Effect Sizes, Confidence Intervals, and Meta-Analysis. New York: Routledge. 
}
\author{
Ryne A. Sherman
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{bargraph}}
\code{\link{barplot}}
}
\examples{
	#Making some random data
y <- rnorm(100)
x <- rep(c(1,2),50)
z <- c(1,rep(c(1,2,3),33))
zz <- rep(c(1:4),25)
x2 <- rep(1:2, each=50)
	#plotting
egraph(y)
egraph(y, xlab="", ylab="DV", las=1)
egraph(y, x, xlab="Conditions", ylab="DV", las=1)
egraph(y, z, xlab="Conditions", ylab="DV", las=1)
egraph(y, zz, xlab="", ylab="DV", las=1, font.main=1, 
	main="my title", sub="Arms Indicate 95 percent CIs")
egraph(y, zz, xlab="Conditions", ylab="DV", las=1, font.main=1, 
	main="my title", xpoints=c(1,1.5, 4,4.5),grp.names=c("A","B", "C", "D"), 
	sub="Arms Indicate 95 percent CIs", sides=1)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ descriptive statistics  }
\keyword{ plot }% __ONLY ONE__ keyword per line
