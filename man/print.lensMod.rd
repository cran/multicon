\name{print.lensMod}
\alias{print.lensMod}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Printing Lens Model Output
}
\description{
A function for succinctly organizing output from the \code{\link{lensModel}} function.
}
\usage{
\method{print}{lensMod}(x, rnd.coef = 2, rnd.p = 3, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{A object of class LensMod to be printed}
  \item{rnd.coef}{A numeric indicating the number of digits to round the coefficients}
  \item{rnd.p}{A numeric indidating the number of digits to round the p-values}
    \item{...}{More arguments to pass to the print function.}
}
\details{
A print function for the \code{\link{lensModel}} function that makes the output easier to interpret.
}

\author{
Ryne A. Sherman
}
\seealso{
\code{\link{lensModel}}
}
\examples{

data(lensData)
DIAMONDS.in <- lensData[,32:39] # Self-ratings on 8 Situation Characteristics
DIAMONDS.ex <- lensData[,40:47] # Coder-ratings on 8 Situation Characteristics
CUES <- lensData[,3:31]         # Coded Situation Cues

mod <- lensModel(DIAMONDS.in, DIAMONDS.ex, CUES) # Get the lens statistics
print(mod)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Lens Model }


