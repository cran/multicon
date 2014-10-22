\name{catseye}
\alias{catseye}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Cat's Eye
}
\description{
A function for plotting summary statistics with error bars and error distributions.
}
\usage{
catseye(DV, grp = NULL, plotFUN = mean, errFUN = c("ci", "se", "sd"),
	 conf = 0.95, xpoints = NULL, grp.names = NULL, 
	 tick = FALSE, ylim = NULL, col = "gray", len = 0, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{DV}{
A numeric variable containing raw scores to be summarized in the graph.
}
  \item{grp}{
Either (a) a single variable indicating the grouping factor, (b) a list of variables each indicating a different grouping factors, or (c) NULL (default) in which case only a single bar is graphed.}
  \item{plotFUN}{
The function used to create the summary statistic. Usually mean is desired.
}
  \item{errFUN}{
A character element indicating the type of error bars to be calculated. There are four possible choices: "ci" (the default) uses a confidence interval for the mean with level indicated by the conf= argument. "se" uses 1 Standard Error from the mean. "sd" uses 1 Standard Deviation from the mean. NULL indicates no error bars/distributions are desired.
}
  \item{conf}{
A numeric between .00 and 1.00, indicating the desired level of  confidence if type "ci" is used for the errFUN argument.
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
  \item{col}{
A specification of the plotting color for the error distributions. See \code{\link{par}}.
}
  \item{len}{
A numeric indicating the desired length of the error bar "caps" in inches.
}
  \item{\dots}{
Other arguments passed to the plot() function including graphing parameters.
}
}
\details{
This function plots a summary statistic with error bars and distributions using raw data as input. This is different from, and often more convenient and useful, than barplot() which requires the user to compute the values to be plotted and error bars outside of the function. This is a preferred form of presenting group means (rather than bargraphs) because bargraphs tend to suggest more accuracy than in reality (Cumming, 2012, 2013).
}

\references{
Cumming, G. (2012). Understanding the New Statistics: Effect Sizes, Confidence Intervals, and Meta-Analysis. New York: Routledge.\cr

Cumming, G. (2013). The New Statistics: Why and How. Psychological Science.
}
\author{
Ryne A. Sherman
}
\seealso{
\code{\link{bargraph}}
\code{\link{barplot}}
\code{\link{egraph}}
}
\examples{
  # A Single Group
f <- rnorm(50)
catseye(f, conf=.95, xlab="", ylab="DV", las=1)
catseye(f, conf=.95, xlab="", ylab="DV", las=1, col="light green",
	 main="Cat's Eye Plot for a Single Group Mean", sub="95 percent CI")

  # Two Groups
f2 <- rnorm(100)
g <- rep(1:2, each=50)
catseye(f2, grp=g, xlab="Conditions", ylab="DV", 
	grp.names=c("Control", "Experimental"), las=1)
catseye(f2, grp=g, conf=.8, xlab="", ylab="DV", 
	grp.names=c("Control", "Experimental"), las=1, col="cyan", 
	main="Two Group Mean Comparison", sub="80 percent CIs")
  
  # Three Groups
f3 <- c(rnorm(10), rnorm(10, mean=.5), rnorm(10, mean=1, sd=2))
g2 <- rep(1:3, each=10)
catseye(f3, grp=g2, conf=.95, xlab="Conditions", ylab="DV", 
	grp.names=c("Group 1", "Group 2", "Group 3"), las=1, col="cyan",
	main="Three Group Mean Comparison")

  # A 2 x 2 Design
f4 <- rnorm(200)
fac1 <- rep(1:2, each=100)
fac2 <- rep(3:4, 100)
catseye(f4, list(fac1, fac2), xlab="Conditions", ylab="DV", 
	grp.names=c("High/High", "High/Low", "Low/High", "Low/Low"),las=1, 
	col="orange", main="A 2 x 2 Experiment Comparison")
  # Using the xpoints argument to create visual space
catseye(f4, list(fac1, fac2), xlab="Conditions", ylab="DV", 
	grp.names=c("High/High", "High/Low", "Low/High", "Low/Low"),xpoints=c(1,2,4,5), 
	las=1, col="orange", main="A 2 x 2 Experiment Comparison")

  # A 2 x 3 Design
f5 <- rnorm(180)
fac1 <- rep(1:2, each=90)
fac2 <- rep(3:5, 60)
catseye(f5, list(fac1, fac2), xlab="Conditions", ylab="DV", 
	grp.names=c("High/A", "High/B", "High/C", "Low/A", "Low/B","Low/C"), 
	las=1, main="A 2 x 3 Experiment Comparison")
  # Using the xpoints argument to create visual space
catseye(f5, list(fac1, fac2), xlab="Conditions", ylab="DV", 
	grp.names=c("High/A", "High/B", "High/C", "Low/A", "Low/B","Low/C"), 
	xpoints=c(1,2,3,5,6,7), las=1, main="A 2 x 3 Experiment Comparison")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ graphing }
\keyword{ distributions }% __ONLY ONE__ keyword per line
