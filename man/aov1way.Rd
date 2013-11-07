\name{aov1way}
\alias{aov1way}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
One Way Anova
}
\description{
Returns the results of a one-way ANOVA on a matrix in x
}
\usage{
aov1way(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A matrix with each column corresponding to a different level of the IV
}
}
\details{
 Similar to the R function aov only this returns the effect size eta for the between-S effect
}
\value{
A matrix displaying the ANOVA summary table. 
}
\author{
Ryne A. Sherman
}
\examples{
T1=rnorm(10,mean=1,sd=.5)
T2=rnorm(10,mean=1.1,sd=.45)
T3=rnorm(10,mean=1.2,sd=.4)
DVxIV=cbind(T1,T2,T3)
aov1way(DVxIV)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ anova }
\keyword{ one-way }% __ONLY ONE__ keyword per line
