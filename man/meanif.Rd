\name{meanif}
\alias{meanif}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Mean 
}
\description{
Returns the mean of a vector, matrix, or data.frame if it has nomiss proportion of valid cases
}
\usage{
meanif(set, nomiss = 0.8, tr = 0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{set}{
A vector, matrix, or data.frame
}
  \item{nomiss}{
A numeric vector specifying the proporiton of valid cases in set (i.e. data that must not be NA) for the mean to be returned
}
  \item{tr}{
A numeric specifying the amount of trimming if desired
}
}
\details{
The built in r function mean includes an na.rm argument that allows the computation of a mean excluding missing cases. However, sometimes one wants to calculate the mean of an object so long as some proportion of those cases are present. The nomiss option of this function allows this capability. If fewer than the nomiss proportion of the cases are invalid (i.e. misssing) the function will return NA. Otherwise, it will return the mean of the valid cases.
}
\value{
Returns the mean.
}

\author{
Ryne A Sherman
}

\seealso{
\code{\link{mean}}
}
\examples{
data(RSPdata)
RSPdata$sEXT #no missing values 
meanif(RSPdata$sEXT,nomiss=1)
RSPdata$sEXT[100] <- NA #now we make one value missing
meanif(RSPdata$sEXT,nomiss=1) #returns NA
meanif(RSPdata$sEXT,nomiss=.8) #returns value

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ mean  }
\keyword{ missing values }% __ONLY ONE__ keyword per line
