\name{MTMM}
\alias{MTMM}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Multi Trait Multi Method Matrix
}
\description{
Returns the summary results from a multi-trait multi-method correlation matrix including the average correlations for Same Trait-Different Method, Same Method-Different Trait, and  Different Method-Different Trait.
}
\usage{
MTMM(x, traits, methods)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A data.frame organized such that each column represents the ratings for each Trait-Method combination. The columns must be ordered in sets such that the first set is the first trait rated by each method, followed by the second trait rated by each method (in the same order), and so on. 
}
  \item{traits}{
An integer indicating the total number of different traits rated.
}
  \item{methods}{
An integer indicating the total number of methods used.
}
}
\details{
Multi-trait Multi-method matrices are often used examine the validity of the construct(s) under investigation. That is, if different methods agree about a target's standing on a trait, it is more likely that the trait itself is valid. However, such agreement must be compared with agreement about different targets using the same method (method effects), which must in turn be compared with agreement about different targets using different methods (i.e., the general similarity of targets). This function returns all three such values: The average agreement about targets on the given traits using different methods, the average agreement about different targets using the same methods (method effects), and the average agreement about different targets using different methods (baseline agreement). 
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
\item{SameTrait }{The average correlation for the Same Traits rated by Different Methods}
\item{SameMethod }{The average correlation for the Same Methods used to rate the Different Traits}
\item{DiffDiff}{The average correlation for the Different Traits rated by Different Methods}
%% ...
}

\author{
Ryne A. Sherman
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{inner.outer}}
}
\examples{
	# We can generate some random data by first creating a population correlation matrix
sig <- matrix(c(1.00,.4,.6,.05,.1,-.05,.4,1.00,.5,.08,
	-.02,.03,.6,.5,1.00,.09,.1,-.07,.05,.08,.09,1.00,.6,.7,.1,-.02,.1,.6,
	1.00,.5,-.05,.03,-.07,.7,.5,1.00), ncol=6, byrow=TRUE)
sig
library(mvtnorm)
	# Now create random data based on this population matrix
d <- rmvnorm(100, sigma=sig)
	#Now use MTMM on this data.frame indicating that there are 2 traits and 3 methods. 
MTMM(d, 2, 3)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ multi trait multi method matrix}

