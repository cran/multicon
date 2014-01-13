\name{structSumIPC}
\alias{structSumIPC}
\title{
	Structural Summary Method for the Interpersonal Circumplex
	}                     
\description{
	Computes scores from the structural summary method (Gurtman, 1992; Gurtman & Pincus, 2003; Wright, Pincus, Conroy, & Hilsenroth, 2009) for the interpresonal circumplex.
	}

\usage{
structSumIPC(x, ord = c("PA", "BC", "DE", "FG", "HI", "JK", "LM", "NO"))
}
\arguments{
 	\item{ x }{A matrix or data.frame containing the association values (e.g., correlations) between the variable(s) of interest and the IPC scales. The IPC scales should be the columns and the variable(s) of interest should be the rows.
 		}
 	\item{ord}{A character vector of length eight specifying the order of the IPC scales (columns) in x. By default the function assumes they are in counter-clockwise order starting from the vertical axis at 12:00.
 		}
}
\details{
This function is used to create a unit-weighted composite of the variables listed in the columns of the matrix or data.frame "set" for each row. The nomiss option lets one specify the proportion of valid cases required for the composite mean to be computed. By default, the mean is computed if at least 80 percent of the  data in the the row are valid.
}
\value{
A data.frame containing the following columns:
    \item{DOM}{
    	Item's association with the dominance dimension of the IPC
    	}
    \item{LOV}{
    	Item's association with the warmth dimension of the IPC
    	}
    \item{DEG}{
    	Item's angle on the IPC grid (from 0 to 360)
    	}
    \item{AMP}{
    	Item's discriminant validity; degree to which it corresponds to only a single octant
    	}
    \item{ELEV}{Item's mean level of assocation across all 8 octants
    	}
    \item{SStot}{
    	Item's total sums of squares with the IPC
    	}
    \item{Rsq}{
    	Item's goodness-of-fit with the IPC (how well do the summary stats capture the correlations between the item and the octants).
    	}
}
\references{
Gurtman, M. B. (1992). Construct validity of interpersonal personality measures: The Interpresonal Circumplex as a nomological net. Journal of Personality and Social Psychology, 63, 105-118.\cr
Gurtman, M. B., & Pincus, A. L. (2003). The circumplex model: Methods and research applications. In J. A. Schinka & W. F. Velicer (Eds.), Handbook of psychology: Research methods in psychology (Vol. 2, pp. 407-428). Hoboken, NJ: Wiley.\cr
Markey, P. M., Funder, D. C., & Ozer, D. J. (2003). Complementarity of interpersonal behavior in dyadic interactions. Personanlity and Social Psychology Bulletin, 29, 1082-1090.\cr
 Wright, A. G., Pincus, A. L., Conroy, D. E., & Hilsenroth, M. J. (2009). Integrating methods to optimize circumplex description and comparison of groups. Journal of Personality Assessment, 91, 311-322.\cr
}

\examples{
  # How is the CAQ associated with the IPC?
data(caq) # Load the caq data
data(beh.comp) #Load Behavioral composite data 
data(caq.items) #Load CAQ items 
  # Get IPC octant scores from the behavioral composites of the RBQ.
PA <- composite(beh.comp[,c(56, 4, 5)])
BC <- composite(beh.comp[,c(17, 27, 54)])
DE <- composite(beh.comp[,c(60, 19, 34)])
FG <- composite(beh.comp[,c(13, 22, 36)])
HI <- composite(beh.comp[,c(50, 21, 26)])
JK <- composite(beh.comp[,c(3, 18, 29)])
LM <- composite(beh.comp[,c(7, 32, 28)])
NO <- composite(beh.comp[,c(15, 20, 62)])
IPC.set <- data.frame(PA,BC,DE,FG,HI,JK,LM,NO) # Put them into one data.frame
  # Get the correlations between the CAQ and the IPC
r <- cor(caq, IPC.set)
  # Apply the structural summary method to the correlations
CAQsum <- structSumIPC(r)
CAQsum$items <- caq.items
CAQsum
  # Plot the results (only those with Rsq >= .70)
CAQsum.sig <- data.frame(CAQsum[CAQsum$Rsq >= .7,], row.names=1:51)
plotDEGcaq <- CAQsum.sig$DEG
CAQx <- cos(plotDEGcaq * (pi / 180))
CAQy <- sin(plotDEGcaq * (pi / 180))
plotPOScaq <- ifelse(plotDEGcaq > 90 & plotDEGcaq < 270, 2, 4)
plotDEGcaq <- ifelse(plotDEGcaq > 90 & plotDEGcaq < 270, plotDEGcaq + 180, plotDEGcaq)

plot(CAQx, CAQy, xlim=c(-2, 2), ylim=c(-2, 2), type="n", xlab="Warmth", 
	ylab="Dominance", font.main=1, main="CAQ and the IPC", xaxt="n", yaxt="n")
for(i in 1:51) {
  text(CAQx[i], CAQy[i], labels=CAQsum.sig$items[i,1], cex=.75, 
  srt=plotDEGcaq[i], pos=plotPOScaq[i])
}
  # Adding a circle
circX <- seq(-1,1, by=.01)
circY <- sqrt(1 - circX^2)
lines(c(circX,-circX), c(circY,-circY))
lines(c(0,0), c(-1,1))
lines(c(-1,1), c(0,0))
}
\keyword{IPC}
\keyword{Structural Summary}