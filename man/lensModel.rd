\name{lensModel}
\alias{lensModel}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Lens Model Regressions
}
\description{
A function for computing key statistics from a Lens Model (Brunswick, 1952) analysis.}
\usage{
lensModel(inSet, exSet, cueSet)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{inSet}{A data.frame containing the variables on the validity side of the lens model. It must have the same dimensions as exSet and columns corresponding to the columns in exSet.}
  \item{exSet}{A data.frame containing the variables on the utilization side of the lens model. It must have the same dimensions as inSet and columns corresponding to the columns in inSet.}
  \item{cueSet}{A data.frame containing the cues to use in the lens analysis.}
}

\details{This function is designed to perform so-called Lens Model analyses.
If a set of targets has known criterion values on some dimensions (e.g.,
self-reports of personality) a set of judges may make judgments of those targets
(e.g., other reports of personality) based on some information (i.e., Cues)
presented to the judges (e.g., some behavioral acts). A lens model analyses
examines (a) the achievement of the judges (i.e., accuracy) for each dimension
being judged as the correlation between the judgments and the criterion, (b)
the validities of the cues for each dimension as the linear regression
coefficients predicting the criterion from all of the cues, and (c) the cue
utilization of the judges for each dimension as the linear regression
coefficients predicting the judgments from the cues. This function computes all
of this and much more in one step.
}
\value{
Returns a list containing the following
\item{Lens Stats}{A data.frame containing the following statistics for each variable in inSet:}
  \enumerate{
    \item{Validity Saturation}{The multiple R for the Validity side of the Lens Model}
    \item{Utilization Saturation}{The multiple R for the Utilization side of the Lens Model}
    \item{Coefficient Correlation}{The correlation between the Cue Validities and the Cue Utilizations (not including the intercept)}
    \item{Achievement}{The correlation between inSet and exSet}
    \item{Linear Knowledge}{The correlation between the fitted values from the validity and utilization sides of the model}
    \item{Unmodeled Knowledge}{The correlation between the residuals from the validity and utilization sides of the model}
  }
\item{Cue Validities}{A data.frame of size ncol(cueSet)+1 X ncol(inSet) containing the regression coefficients (including intercept) for the validity side of the lens model.}
\item{Cue Utilizations}{A data.frame of size ncol(cueSet)+1 X ncol(exSet) containing the regression coefficients (including intercept) for the utilization side of the lens model.}
%% ...
}
\references{
Brunswik, E. (1952). The conceptual framework of psychology. Chicago: University of Chicago Press
}
\author{
Ryne A. Sherman
}
\seealso{
\code{\link{lensDetect}}
\code{\link{print.lensMod}}
}
\examples{

data(lensData)
DIAMONDS.in <- lensData[,32:39] # Self-ratings on 8 Situation Characteristics
DIAMONDS.ex <- lensData[,40:47] # Coder-ratings on 8 Situation Characteristics
CUES <- lensData[,3:31]         # Coded Situation Cues

mod <- lensModel(DIAMONDS.in, DIAMONDS.ex, CUES) # Get the lens statistics
mod$'Lens Stats' # View the overall stats
print(mod)       # View the individual coefficients and p-values

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Lens Model}

