\name{Profile.norm}
\alias{Profile.norm}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Normativeness
}
\description{
Computes a number of "normativeness" statistics for a given matrix or data.frame
}
\usage{
Profile.norm(set, nomiss = 0.8, center = "grand", std = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{set}{
A data.frame or matrix.
}
  \item{nomiss}{
A numeric between .00 and 1.00 specifying the proportion of x-y pairs required to be complete before NA is returned instead of the regression coefficients. The default of .80 means that if more than 20 percent of the x-y pairs are incomplete an NA will be returned.
}
  \item{center}{
A character vector specifying the type of centering to be done. If "group" is used then each column in set is centered on its own column mean. If "grand" (default) is used then each column in set is centered on the mean of all data in set. If "none" is used then no centering is done.
}
  \item{std}{
A logical vector indicating whether variables should be standardized prior to analysis. The default option (FALSE) does no standardizing. Using TRUE standardizes the variables set with centering determined by the center="option".
}
}
\details{
This function is largely based on Furr's (2008) discussion of normativeness. For a given data.frame or matrix ("set"), this function computes 1) the mean of all variables (columns) in the set; 2) a jackknifed mean for each row, which is the mean of all variables in the set with its own row's data removed; 3) the correlations with normativeness which are the Profile correlations for the data in the rows of set with the jackknifed mean; 4) the regression coefficients with normativeness which are the jackknifed means predicting their own row; and 5) the residuals for the jackknifed means predicting their own own row. Folliwing Furr (2008) the correlation and regression coefficients can be used as measures of "normativeness" for each row's Profile and the residuals can be used as a measure of "distinctiveness" for each row's Profile.
  }
\value{

\item{Means}{The means of the columns in set after removing missing values.}
\item{JackMeans }{A matrix, with the same dimensions as set, of means of set after removing the values in the given row.}
\item{Cors }{The correlations between each row in set with it's jackknifed mean.}
\item{Regs }{The regression coefficients (intercept and slope) for each row in set as predicted by it's jackknifed mean.}
\item{Residuals }{A matrix, with the same dimensions as set, containing the residuals from predicting the rows in set from the jackknifed means.}

}
\references{
Furr, R. M. (2008). A framework for Profile similarity: Integrating similarity, normativeness, and distinctiveness. Journal of Personality, 75(5), 1267-1316.
}
\author{
Ryne A. Sherman
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{Profile.r}}
\code{\link{Profile.reg}}
\code{\link{Profile.resid}}


}
\examples{
data(caq)
caq.norm <- Profile.norm(caq)
str(caq.norm)
	# The Mean CAQ profile
caq.norm$Means  
	# The Jackknifed Mean Profiles (the mean profile with its own case removed)
head(caq.norm$JackMeans) 
	# The profile correlations between my own CAQ and the Jackknifed Mean profile
caq.norm$Cors   
	# The regression coefficients between my own CAQ profile and the Jackknifed Mean profile
caq.norm$Regs  
	# The residuals after predicting my own CAQ profile with my Jackknifed Mean profile
head(caq.norm$Residuals)  


	
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ normativeness }
\keyword{ residuals }% __ONLY ONE__ keyword per line
