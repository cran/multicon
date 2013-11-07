\name{RSPdata}
\alias{RSPdata}
\docType{data}
\title{
Riverside Situation Project Data
}
\description{
This is the original data file for the \code{\link{multicon-package}}. All other data objects are subsetted or dervived from this dataset.
This data set is part of a larger data collection project, the Riverside Situation Project (RSP).  
The Riverside Situation Project was designed to measure and understand the psychological characteristics of situations
and their relationship to personality, behavior, and emotion. The details of the data collection are provided by 
Sherman and colleagues (2010), but are briefly summarized here. 205 target participants came to the lab on 5 occastions.
On the first visit to the lab participants completed a large number of personality measures about themselves. They also
provided the names to of two acquaintances who knew them well and could come to the lab to rate their (the participants) personalities.
On visits 2-5, participants came to the lab and were asked to describe the situation they were in the day before at a prespecified
time. They then rated that situation using the Riverside Situational Q-sort, a measure of psychological characteristics of situations.
Lastly, participants rated their behavior in that situation using the Riverside Behavioral Q-sort. Each visit was 
separated by a minimum of 48 hours. 

Data from that project have been used in several publications (Sherman, Nave, & Fundeer, 2010, 2012, 2013; Sherman, Figueredo, & Funder, 2013).
}
\usage{data(RSPdata)}
\format{
	
  A data frame with 205 observations on 619 variables. 
  
  The following items are only contained in RSPdata:
  
 	SID: Subject ID Number
  	\cr ssex:  Subject sex: male = 1, fem = 2
  	\cr sEXT:  Extraversion Composite from the BFI
    \cr sAGR:  Agreeableness Composite from the BFI
    \cr sCON: Conscientiousness Composite from the BFI
    \cr sNEUR  Neuroticism Compostie from the BFI
    \cr sOPEN:  Openness Composite from the BFI

  RSPdata also contains items from the following datasets: 
  
   \link{acq1}:  This is an aquaintance rating of a participant's personality in the Riverside Situation Project.
  \cr \link{acq2}:  This is an aquaintance rating of a participant's personality in the Riverside Situation Project.
  \cr \link{acq.comp}: This is the composite of two aquaintace CAQ ratings of a participant's personality from the Riverside Situation Project 
  \cr \link{bfi.set}: These are Big Five Inventory self ratings of participants from the Riverside Situation Project.
  \cr \link{caq}: These are self ratings of personality using the California Adult Q-Set in the Riverside Situation Project.
  \cr \link{v2rbq}: This is participants' self-ratings of their own behavior using the RBQ in the 1st of 4 situations that they experienced.
  \cr \link{v3rbq}: This is participants' self-ratings of their own behavior using the RBQ in the 2nd of 4 situations that they experienced.
  \cr \link{v4rbq}: This is participants' self-ratings of their own behavior using the RBQ in the 3rd of 4 situations that they experienced.
  \cr \link{v5rbq}: This is participants' self-ratings of their own behavior using the RBQ in the 4th of 4 situations that they experienced.
  \cr \link{beh.comp}: This is a composite of a participants' behavior across 4 situations.
}
\details{
Subjects are listed as Rows (N=205).
Items of several presonality measures (e.g. CAQ, BFI) and measures of behavior (RBQ) are listed in columns. 
}
\source{
\url{http://psy2.fau.edu/~shermanr/index.html}
\url{http://rap.ucr.edu/furrwagermanfunder.doc}
}
\references{
Sherman, R. A., Nave, C. S., & Funder, D. C. (2010). Situational similarity and personality predict behavioral consistency. Journal of Personality and Social Psychology, 99(2), 330-343.\cr

Sherman, R. A., Nave, C. S., & Funder, D. C. (2012). Properties of persons and situations related to overall and distinctive personality-behavior congruence. Journal of Research in Personality, 46, 87-101.\cr

Sherman, R. A., Nave, C. S., & Funder, D. C. (2013). Situational construal is related to personality and gender. Journal of Research in Personality, 47(1), 142-154.\cr

Sherman, R. A., Figueredo, A. J., & Funder, D. C. (2013). The behavioral correlates of overall and distinctive life history strategy. Journal of Personality and Social Psychology, 105(5), 873-888.
}
\examples{
data(RSPdata)
names(RSPdata)
str(RSPdata)
}
\keyword{datasets}
