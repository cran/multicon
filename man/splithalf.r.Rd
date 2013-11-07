\name{splithalf.r}
\alias{splithalf.r}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Split-half Correlation and Reliability 
}
\description{
Estimates the split-half correlation and reliability for a given set of items in matrix or data.frame x. This function finds the average of the randomly split-half correlation for a data.frame() of items. It also returns the reliability (speaman-brown) which should be equivalent to cronbach's alpha. Assumes the split-halves are exactly halves or as close to it as possible.
}
\usage{
splithalf.r(x, sims = 1000, graph = TRUE, seed = 2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A matrix or data.frame containing the items or variables for which one wants to estimate the splithalf reliability
}
  \item{sims}{
A numeric value indicating the number of splithalf reliabilities to compute of which the mean will be used as the best estimate.
}
  \item{graph}{
A logical element indicating whether graphical output should be returned.
}
  \item{seed}{
A numeric element specifying the random seed to be used. If set to FALSE, no seed is used.
}
}
\details{
The columns of x are randomly divided into two equal halves, a scale mean is computed for each half, and then the two sets of scale means are correlated to estimate a splithalf correlation. The splithalf correlation is adjusted by the spearman-brown prophecy formula to create a splithalf reliability. This procedure is repated 'sims' times and the mean of the splithalf correlations (Avg.r) is returned as the best estimate of the reliability of a single item, while the mean of the splithalf reliabilities (Rel) is returned as the best estimate of the reliability of the composite of all items. The SD of the reliability estimate (standard error in this case) is also returned.
}
\value{
A matrix summarizing the results:
  \item{N Vars}{
The number of variables in x
}
  \item{Mean Split-Half r}{
The average of all split-half correlations
}
  \item{Rel}{
The average of all split-half reliabilities
}
  \item{Rel SD}{
The standard deviation of all split-half reliabilities
} 
}

\author{
Ryne A. Sherman
}

\seealso{
\code{\link{vector.splithalf}}
}
\examples{
data(bfi.set)
  # Imagine we are forming a composite extraversion variable from the eight
  # extraversion items in BFI.set 
  # Three items need to be reverse scored
sBFI6r <- 6 - bfi.set$sBFI6
sBFI21r <- 6 - bfi.set$sBFI21
sBFI31r <- 6 - bfi.set$sBFI31
  # Now put them all into one data.frame
ext.vars <- data.frame(bfi.set$sBFI1, sBFI6r, bfi.set$sBFI11, 
	bfi.set$sBFI16, sBFI21r, bfi.set$sBFI26, sBFI31r, bfi.set$sBFI36)
head(ext.vars) # Looks good
  # Now compute the splithalf reliability for a possible composite
splithalf.r(ext.vars, sims=100) # Note in practice sims = 1000 or more might be preffered
  # Should be close to the value resulting from alpha
alpha.cov(cov(ext.vars, use="p"))
  # Getting the 'exact' splithalf correlation and reliability
  # by computing the splithalf correlation for all possible halves
  # (for comparison purposes)
combs <- combn(8,4)
out <- rep(NA, ncol(combs))
for(i in 1:ncol(combs)) {
  c1 <- composite(ext.vars[,combs[,i]])
  c2 <- composite(ext.vars[,-c(combs[,i])])
  out[i] <- cor(c1,c2)
}
mean(out)             # Exact splithalf correlation
mean(out*2/(out+1))   # Exact splithalf reliability
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ split-half }
\keyword{ reliability }% __ONLY ONE__ keyword per line
