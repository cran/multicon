\name{ipsatize}
\alias{ipsatize}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Ipsatize Data
}
\description{
Returns a data.frame after ipsatizing (standardizing the rows)
}
\usage{
ipsatize(set)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{set}{
 \code{A data.frame to be ipsatized} 
}
}
\details{
In research it is frequently desired to standardize the rows of a data.frame rather than the columns. This function does just that.
}
\value{
Returns a data.frame of the same dimensions as 'set' that contains ipsatized values}

\author{
Ryne A. Sherman
}

\seealso{
\code{\link{reQ}}
}
\examples{
data(bfi.set)
#Lets ipsatize (within-person standardize) the Big Five Inventory (BFI)
head(bfi.set)
ip.bfi.set <- ipsatize(bfi.set)
head(ip.bfi.set)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Ipsatize }
\keyword{ Standardize }% __ONLY ONE__ keyword per line
