\name{decomp}
\alias{decomp}
\title{Decomposition of Effects}
\description{
A function for decomposing a matrix into its grand mean, row effects, column effects, and unique effects and examining the association of these effects with corresponding effects in another matrix
}
\usage{
decomp(x, y=NULL, na.rm=TRUE, use="pair")
}
\arguments{
\item{x}{
	A matrix of data to decompose
	}
\item{y}{
	An optional criterion matrix of data to examine for componential similarity to x
	}
\item{na.rm}{
	A logicial indicating if missing values should be removed
	}
\item{use}{
	A character indicating how to handle missing data for correlations
	}
 } 
\details{
	Following Cronbach (1955) this function deomposes the data matrices in x and y and returns a number of characerisicts about these matrices including four measures of their similarity. See value section.
	}
  
\value{
	 A list containing the following
     \item{GrandMeanX}{
     	The grand mean of the x matrix
     	}
    \item{GrandMeanY}{
    	The grand mean of the y matrix
    	}
    \item{RowEffectX}{
    	The mean of the rows for the x matrix
    	}
    \item{RowEffectY}{
    	The mean of the rows for the y matrix
    	}
    \item{ColEffectX }{
    	The mean of the columns for the x matrix
    	}
    \item{ColEffectY}{
    	The mean of the columns for the y matrix
    	}
    \item{DecompositionX}{
    	The unique effects in the X matrix after decomposition
    	}
    \item{DecompositionY}{
    	The unique effects in the Y matrix after decomposition
    	}
    \item{RowUniqueCor}{
    	A vector containing the correlations between the corresponding rows of the decomposed matrices
    	}
    \item{ColUniqueCor}{
    	A vector containing the correaltions between the corresponding columns of the decomposed matrices
    	}
    \item{VarComp}{
    	A data.frame containing the variance components for rows, columns, and interactions
    	}
    \item{Stats}{
    	A 4 x 1 matrix containing 4 similarity components (only returned if a criterion matrix y is provided)\cr
      	Elevation Accuracy: The grand mean of x minus the grand mean of y  \cr
      	Differential Eleveation: The correlation between the row effects  \cr
      	Stereotype Accuracy: The correlation between the column effects \cr 
      	Differential Accuracy: The correlation between the uniquenesses
      	}
      	
    
}      
\references{
Cronbach, L. J. (1955). Processes affecting scores on "understanding of others" and "assumed similarity." Psychological Bulletin, 52, 177-193.
}
\examples{
data(exsitu)
data(insitu)
  # Decomposition of the column and row effects of a single data matrix
decomp(exsitu)
  # Decomposition of the column and row effects of two data matrices including
  # the similarities (correlations) between the row, column, and unqiue effects. 
decomp(exsitu, insitu)
}
\keyword{Variance Decomposition}
\keyword{Decomposition}