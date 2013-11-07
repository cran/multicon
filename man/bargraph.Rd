\name{bargraph}
\alias{bargraph}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Bar Graph
}
\description{
A function for plotting bargraphs with error bars.
}
\usage{
bargraph(DV, grp = NULL, barFUN = mean, 
	errFUN = c("ci", "se", "sd"), sides = 2, conf = 0.95, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{DV}{
A numeric variable containing raw scores to be formed into the bars of the bargraph.
}
  \item{grp}{
Either (a) a single variable indicating the grouping factor, (b) a list of variables each indicating a different grouping factor, or (c) NULL (default) in which case only a single bar is graphed.
}
  \item{barFUN}{
The function used to create the bargraph. Usually mean is desired.
}
  \item{errFUN}{
A character element indicating the type of error bars to be calculated.There are four possible choices: "ci" (the default) uses a confidence interval for the mean with level indicated by the conf= argument. "se" uses 1 Standard Error from the mean. "sd" uses 1 Standard Deviation from the mean. NULL indicates no error bars are desired.
}
  \item{sides}{
A numeric indicating whether one-sided or two-sided error bars are desired.
}
  \item{conf}{
A numeric indicating the desired level of confidence if type "ci" is used for the errFUN argument.
}
  \item{\dots}{
Other arguments passed to the barplot() function including graphing parameters (e.g. 'ylim', 'col').
}
}
\details{
This function plots a bargraph with error bars using raw data as input. This is different from and often more convenient than barplot() which requires the user to compute the values to be plotted and error bars outside of the function.
}
\author{
Ryne A. Sherman
}

\seealso{
 \code{\link{barplot}}
 \code{\link{egraph}}

}
\examples{
T1=rnorm(100,mean=5,sd=1)
times=rep(seq(1,5,1),20)
bargraph(DV=T1,grp=times,barFUN=mean,errFUN="ci",conf=.95,ylim=c(0,6))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ bargraph }
\keyword{ error bars  }% __ONLY ONE__ keyword per line
