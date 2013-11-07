\name{q.cor}
\alias{q.cor}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Q Correlations
}
\description{
Computes correlations, along with randomization tests (see rand.test), between a variable of interest (x) and a set of other variables (set), and repeats this for each sex.
}
\usage{
q.cor(x, set, sex, fem = 1, male = 2, tails = 2, sims = 1000, seed = 2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A numeric vector of the same length as nrow(set) to be correlated with set.
}
  \item{set}{
A matrix or data.frame with nrow the same as length(x) to be correlated with x.
}
  \item{sex}{
A variable specifying the sex variable in the dataset from which x and set come.
}
  \item{fem}{
An element specifying the code for females in the sex variable.
}
  \item{male}{
An element specifying the code for males in the sex variable.
}
  \item{tails}{
An integer of either 1 or 2 specifying the tails for the p-values for the correlations.
}
  \item{sims}{
The number of randomizations passed to the rand.test() function.
}
  \item{seed}{
The seed passed to the rand.test function.
}
}
\details{
A convenience function for quickly examining the pattern of correlations between a variable of interest "x" and a set of other variables "set".
}
\value{
A list containing...
\item{N}{
	The Ns (using complete cases) for the total sample as well as female and male subsamples.
	}
\item{corrs}{
	The pattern of correlations between 'x' and 'set' for the combined sample, females, and males ordered by the items in set.
	}
\item{sorted}{
	The pattern of correlations between 'x' and 'set' for the combined sample, females, and males ordered by the magnitude of the correlations in the combined sample.
	}
\item{vector.cor}{
	The correlation between the female and male patterns of correlations.
	}


}
\author{
Ryne A. Sherman
}
\note{
Use \code{\link{q.cor.print}} not \code{\link{print}} to view the output of q.cor.
}
\seealso{
\code{\link{q.cor.print}}
\code{\link{rand.test}}
}
\examples{
data(RSPdata)
data(v2rbq)
names(v2rbq)
q.obj <- q.cor(RSPdata$sEXT, v2rbq, sex = RSPdata$ssex, fem = 1, male = 2, sims = 1000)
q.obj	
	#It is often useful to summarize this object with q.cor.print()
	#It might be necessary to adjust size of the width of your console to make this content fit.
data(rbqv3.items)
rbqv3.items #The item content for the rbq
q.cor.print(q.obj, rbqv3.items, initial = "RBQ", short = TRUE, EXPORT = FALSE) 
	# to export a .csv file change export to 'T'

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ q.cor}
\keyword{ correlations }% __ONLY ONE__ keyword per line
