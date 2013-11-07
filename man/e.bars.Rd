\name{e.bars}
\alias{e.bars}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Error Bars 
}
\description{
A function for plotting error bars onto barplots.
}
\usage{
e.bars(graph, m, ebl, sides = 2, length = 0.08)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{graph}{
A vector of x-coordinates at which to plot the error bars.
Alternatively, an object resulting from barplot() may be used.
}
  \item{m}{
A vector indicating the centers for each error bar (e.g., group means)
}
  \item{ebl}{
A vector indicating the error bar lengths
}
  \item{sides}{
A numeric indicating whether one-sided or two-sided error bars are desired.
}
  \item{length}{
A numeric indicating the length of the "caps" of the error bars
}
}
\details{
Plots error bars for barplots, but can be used generically for other error bar plotting. 
}

\author{
Ryne A. Sherman
}

\seealso{
\code{\link{bargraph}}
}
\examples{
#making random data
y1 <- rnorm(30, mean = 5, sd = 1.5)
y2 <- rnorm(30, mean = 8, sd = 1.2)
#simple barplot
mygraph <- barplot(c(mean(y1),mean(y2)), ylim=c(0,10))
#plotting the error bars 
library(sciplot) # To get the se() function
e.bars(mygraph, c(mean(y1),mean(y2)), ebl=c(se(y1),se(y2)), sides = 2, length = 0.08)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ error bars }
\keyword{ plotting }% __ONLY ONE__ keyword per line
