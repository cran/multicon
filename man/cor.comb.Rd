\name{cor.comb}
\alias{cor.comb}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Combine Correlations
}
\description{
This function was designed to meta-analytically combine the correlations of X and Y when the data come from non-independent samples.
}
\usage{
cor.comb(y1, y2, y3, y4, x1, x2, x3, x4, sims = 1000, hist = FALSE, 
	rnd = 5, CI = TRUE, simple = FALSE, seed = 2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{y1}{
vector paired with x1
}
  \item{y2}{
vector paired with x2
}
  \item{y3}{
vector paired with x3
}
  \item{y4}{
vector paired with x 4  
}
  \item{x1}{
vector paired with y1
}
  \item{x2}{
vector paired with y2
}
  \item{x3}{
vector paired with y3 
}
  \item{x4}{
vector paired with y4 
}
  \item{sims}{
Number of simulations to be run in the randomization test (1000 by default).
}
  \item{hist}{
Logical: A histogram of the randomized results may be displayed by the 'hist' = 'TRUE' option. 
}
  \item{rnd}{An integer indicating the number of decimal places when results are displayed
}
  \item{CI}{
Logical: If the CI option is marked TRUE, 95 percent confidence intervals based on the randomization test results from the empirical sampling distribution will be output.
}
  \item{simple}{
Logical: When simple = F, the Weighted r is also provided for "Stouffer p" comparison. When simple = T, only the Unweighted r is returned.
}
  \item{seed}{
An integer indicating the starting value for a random seed. If no random seed is desired, set 'seed'=FALSE
}
}
\details{
This function computes the average correlation for each of the 4 X-Y pairs and performs a randomization test to determine the probability of observing such a result under the null hypothesis of X and Y pairs are random.
}
\value{
	
	
The output provides three slightly different types of p-values. The "normal p" provides the p-value that comes from dividing the difference between the observed meta-analytically combined correlation and the empirically simulated meta-analytically combined correlation by the standard deviation (i.e. standard error) of the empirical sampling distribution. This value is treated as a normal deviate Z and the p-value associated with that Z is computed. The "rand p" is given by the 2-tailed cumulative density of the empirically derived curve at the observed meta-analytically combined value. Finally, the "Stouffer p" is the p-value associated with a typical fixed effects approach to meta-analysis where the standard normal deviate Z-scores associated with each of the p-values for each of the four observed correlations are summed and divided by the squareroot of the number of correlations creating the sum. Before summing, the Z-values must be turned to face the same direction (i.e. if r > 0, Z > 0; if r < 0, Z < 0). While this method is typically associated with a weighted effect size estimate and this function computes an unweighted effect size estimate, the weighted and unweighted effect size estimates are equivalent to the degree to which the size of the samples are equivalent. When simple = F, the Weighted r is also provided for comparison. When simple = T, only the Unweighted r is returned.

}

\author{
Ryne A. Sherman
}
\note{
A note on the cor.comb function: The cor.comb function can easily be replaced by MLM procedures. While there is some nice interpretability features for the cor.comb function, MLM is generall more accepted in the literature. This function is probably most useful for comparisons with MLM results.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{cor.comb.rep}}
}
\examples{
	data(RSPdata)
names(RSPdata)
	#Computing the relationship between self reported extraversion 
	#and Behavior measured by RBQ1 "Interviews others"over 4 situations 
data(rbqv3.items)
rbqv3.items # the RBQ content
	# The correlations between extraversion and RBQ001 in Situation 1
cor(RSPdata$sEXT,RSPdata$v2rbq001)  
cor(RSPdata$sEXT,RSPdata$v3rbq001) # ... Situation 2 
cor(RSPdata$sEXT,RSPdata$v4rbq001) # ... Situation 3
cor(RSPdata$sEXT,RSPdata$v5rbq001) # ... Situation 4 
	#now to use cor.comb to combine meta-analytically
cor.comb(y1=RSPdata$sEXT,y2=RSPdata$sEXT,y3=RSPdata$sEXT,
	y4=RSPdata$sEXT,x1=RSPdata$v2rbq001,x2=RSPdata$v3rbq001,
	x3=RSPdata$v4rbq001,x4=RSPdata$v5rbq001,hist=TRUE)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ correlations }
\keyword{ meta-analysis }% __ONLY ONE__ keyword per line
