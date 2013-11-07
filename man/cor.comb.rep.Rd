\name{cor.comb.rep}
\alias{cor.comb.rep}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Replicabilities and Correlations 
}
\description{
A function for getting the replicabilities for cor.comb() correlations See cor.comb() and vector.splithalf() for more information.

}
\usage{
cor.comb.rep(x1, x2, x3, x4, set1, set2, set3, set4, sims = 100, CI = 0.95)
}
%- maybe also 'usage' for other objects documented here.
\arguments{

  \item{x1}{
vector paired with set1
}
  \item{x2}{
vector paired with set2
}
  \item{x3}{
vector paired with set3 
}
  \item{x4}{
vector paired with set4 
}
  \item{set1}{
matrix paired with x1
}
  \item{set2}{
matrix paired with x2
}
  \item{set3}{
matrix paired with x3
}
  \item{set4}{
matrix paired with x 4  
}
  \item{sims}{
Number of simulations to be run in the randomization test (100 by default).
}
  \item{CI}{
Desired confidence interval limits. Default is .95.
}
}

\value{
\item{N }{The sample size. *See 'note'}
\item{Rep }{Estimated replicability}
\item{SE}{Standard Error of the estimated replicability}
\item{UL }{Upper limit of the CI}
\item{LL }{Lower limit of the CI}

}
\author{
Ryne A. Sherman
}
\note{
 Be wary that this function bases the reported "N" on the N of x1.
 }

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{cor.comb}}
\code{\link{vector.splithalf}}
}
\examples{
data(RSPdata)
names(RSPdata)
	#Computing the relationship between self reported extraversion and 
	#Behavior measured by RBQ1 "Interviews others"over 4 situations 
data(rbqv3.items)
rbqv3.items # the RBQ content
	 # The correlations between extraversion and RBQ001 in Situation 1 
cor(RSPdata$sEXT,RSPdata$v2rbq001)
cor(RSPdata$sEXT,RSPdata$v3rbq001) # ... Situation 2 
cor(RSPdata$sEXT,RSPdata$v4rbq001) # ... Situation 3
cor(RSPdata$sEXT,RSPdata$v5rbq001) # ... Situation 4 
	#now to use cor.comb to combine meta-analytically
cor.comb(y1=RSPdata$sEXT,y2=RSPdata$sEXT,y3=RSPdata$sEXT,y4=RSPdata$sEXT,
         x1=RSPdata$v2rbq001,x2=RSPdata$v3rbq001,x3=RSPdata$v4rbq001,x4=RSPdata$v5rbq001)
#now to test the replicability of these results
data(v2rbq)
data(v3rbq)
data(v4rbq)
data(v5rbq)

# Note in practice sims = 100 or more might be preferred
cor.comb.rep(x1=RSPdata$sEXT,x2=RSPdata$sEXT,x3=RSPdata$sEXT,
	x4=RSPdata$sEXT,set1=v2rbq,set2=v3rbq,set3=v4rbq,set4=v5rbq, sims=5) 
 }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ vector replicability }
\keyword{ meta-analysis }% __ONLY ONE__ keyword per line
