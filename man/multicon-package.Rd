\name{multicon-package}
\alias{multicon-package}
\alias{multicon}
\docType{package}
\title{
Multivariate Constructs
}
\description{
This package contains functions for examining multivariate constructs (MCs). 

}
\details{
\tabular{ll}{
Package: \tab multicon\cr
Type: \tab Package\cr
Version: \tab 1.6\cr
Date: \tab 2011-1-29\cr
License: \tab GPL-2\cr
}
MCs are, as the name implies, constructs that consist of many variables. 
For example, personality is not a single variable, but a constellation of
many individual variables. This is problematic for traditional analyses which
only examine the relationships between only 1 variable (or just a few variables)
and some outcome of interest. Within-person analyses are often interested in
MCs as well. This package contains functions for examining such multivariate constructs.
}
\author{
Ryne A. Sherman \cr
Maintainer: Ryne A. Sherman <rsherm13@fau.edu> \cr
Compiler: David G. Serfass <dserfass@fau.edu>
}
\references{
Cumming, G. (2012). Understanding the New Statistics: Effect Sizes, Confidence Intervals, and Meta-Analysis. New York: Routledge.\cr

Funder, D. C., Furr, R. M., Colvin, C. R. (2000). The Riverside Behavioral Q-sort: A tool for the description of social behavior. Journal of Personality, 68, 451-489.\cr

Furr, R. M., Wagerman, S. A., & Funder, D. C. (2010). Personality as manifest in behavior: Direct behavioral observation using the revised Riverside Behavioral Q-sort (RBQ-3.0). In C.R. Agnew, D. E. Carlston, W. G., Graziano, & J. R. Kelly (Eds.), Then a miracle occurs: Focusing on beahvior in social psychological theory and research. (pp. 186-204). Oxford University Press.\cr

Furr, R. M. (2008). A framework for Profile similarity: Integrating similarity, normativeness, and distinctiveness. Journal of Personality, 76(5), 1267-1316.\cr

My website: 	
\url{http://psy2.fau.edu/~shermanr/index.html}
}

\keyword{ multivariate constructs }
\keyword{ replicability }
\keyword{ personality psychology }
\keyword{ within-person }
\keyword{ profile analyses }
\seealso{
\code{\link[psych]{psych}}
}
\examples{
# Some examples of the core functions in the multicon package:

# Is personality related to behavior? This simple question becomes more
# complex with the recognition that both personality and behavior are multivariate constructs.
# One (of many) ways to quantify personality is with a a 100-item measure,
# the California Adult Q-set (CAQ: Block, 1961). And one (of a few) ways to
# quantify behavior is with a 67-item measure, the Riverside Behavioral Q-sort
# (RBQ: Funder, Furr, & Colvin, Colvin, 2000; Furr, Wagerman, & Funder, 2010).

# How well are these two instruments related? There are 100 * 67 = 6700
# possible correlations that could be examined one at a time. Alternatively,
# we could answer our question more directly by simply seeing what the
# (absolute) average correlation is amongst these two sets of items and testing
# it against a baseline model that assumes zero association. The function
# rand.test() does this.

data(caq)
data(v2rbq)
	# Note that in practice more sims (i.e., 1000 or more) might be preffered
rand.test(caq, v2rbq, sims=100, graph=FALSE)

# How is a specific single variable of interest (e.g., Extraversion) related
# to some multivariate construct (e.g., behavior - as measured by the RBQ)?
# Do the relationships differ by sex? The function q.cor() is
# designed to answer this question.

data(RSPdata)
  # Note that in practice more sims (i.e., 1000 or more) might be preffered
myobj <- q.cor(RSPdata$sEXT, v2rbq, sex = RSPdata$ssex, fem = 1, male = 2, sims=100) 
myobj
  # The results can be organized by using q.cor.print() for easier interpretation
data(rbqv3.items)
q.cor.print(myobj, rbqv3.items, "RBQ", short=TRUE)

# How well do two judgments of a target's personality agree with each other?
# Again, assuming personality is measured as a multivariate construct
# (e.g., the 100-item CAQ), this question is not so straightforward. One way
# is to correlate the two judge's ratings across the 100-item pairs (profile correlation).
# This can be done for each target with two judges. The function Profile.r() does this.

data(acq1) # The first friend of a target being judged (N targets = 205)
data(acq2) # The second friend of a target being judged

Profile.r(acq1, acq2) # The agreements (correlations) for each target
  # Get summary statistics for the agreements
describe.r(Profile.r(acq1, acq2))
  # If we want to control for normativeness (see Furr, 2008) and get
  # significance tests (for both overall and distinctive agreement) we
  # can simply set distinct=TRUE.
Profile.r(acq1, acq2, distinct=TRUE)
  # If we want to know how replicable (reliable) the agreement correaltions are
  # we can use Profile.r.rep()
Profile.r.rep(acq1, acq2)

# The package also includes some graphing functions for comparing group means
# based on "The New Statistics" (Cumming, 2012).
y <- c(rnorm(30), rnorm(30, mean=1))
group <- rep(1:2, each=30)
catseye(y, group, las=1, main="A Catseye Plot", xlab="", 
	grp.names=c("Control", "Experimental"), ylab="DV")
catseye(y, group, las=1, main="A Catseye Plot #2", xlab="", 
	grp.names=c("Control", "Experimental"), ylab="DV", conf=.80, col="cyan")
df=data.frame(group=group,y=y)
diffPlot(y ~ group,data=df,grp.names=c("Control", "Experimental"), xlab="", 
	ylab="DV", main="A Difference Plot", sub="Arms are 95 percent CIs")
}
