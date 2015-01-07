\alias{lensData}
\name{lensData}
\docType{data}
\title{Self and External Coder Ratings of Situations}

\description{
This file contains data from 204 participants who rated their own situations
using the RSQ. Those RSQ ratings were composited to form the 8 DIAMONDS
situation characteristics. These situations were later rated on the same
dimensions by external raters and then coded for a number of situation cues.
}

\usage{data(lensData)}

\format{
  A data.frame with 205 observations containing
  \describe{
    \item{\code{SID}}{A participant ID number}
    \item{\code{Sex}}{The participant's sex}
    \item{\code{family}}{Was with one or more family members}
    \item{\code{mate}}{Was with mate or spouse}
    \item{\code{friend}}{Was with one or more friends}
    \item{\code{roomatesneighbor}}{Was with a roommate or a neighbor}
    \item{\code{group}}{Was with one or more colleagues/classmates, a group, or a team}
    \item{\code{alone}}{Was alone}
    \item{\code{sports}}{Sports were present}
    \item{\code{exam}}{Was taken an exam, test, midterm, or final}
    \item{\code{cooking}}{Someone was cooking}
    \item{\code{eating}}{Someone was eating}
    \item{\code{social}}{People were socializing, talking, communicating, or hanging out}
    \item{\code{movietv}}{There was a movie or TV}
    \item{\code{travel}}{Situation involved travel (e.g., a car, driving)}
    \item{\code{computer}}{Situaiton involed computers or the internet}
    \item{\code{videogames}}{Situation involved video game playing or watching}
    \item{\code{readingbook}}{Was reading a book}
    \item{\code{working}}{Involved working, learning, or getting things done}
    \item{\code{shopping}}{Involved shopping, buying, ordering, or paying for something}
    \item{\code{grooming}}{Involved grooming or getting ready for something}
    \item{\code{waiting}}{Involved waiting for someone or something}
    \item{\code{sleep}}{Involved sleeping, resting, or napping}
    \item{\code{musicdance}}{Involved music or dancing}
    \item{\code{telephone}}{Involved using the telephone}
    \item{\code{home}}{Was in one's home, own room, or house}
    \item{\code{bathroom}}{Was in the bathroom}
    \item{\code{kitchen}}{Was in the kitchen}
    \item{\code{bed}}{Was in one's bed}
    \item{\code{school}}{Was at school, a university, a library, or laboratory}
    \item{\code{cafe}}{Was at a bar, restaurant, or cafe}
    \item{\code{duty}}{Self-rated Duty composite score}
    \item{\code{intellect}}{Self-rated Intellect composite score}
    \item{\code{adversity}}{Self-rated Adversity composite score}
    \item{\code{mating}}{Self-rated Mating composite score}
    \item{\code{positivity}}{Self-rated Positivity composite score}
    \item{\code{negativity}}{Self-rated Negativity composite score}
    \item{\code{deception}}{Self-rated Deception composite score}
    \item{\code{sociality}}{Self-rated Sociality composite score}
    \item{\code{dutyRater}}{Self-rated Duty composite score}
    \item{\code{intellectRater}}{Coder-rated Intellect composite score}
    \item{\code{adversityRater}}{Coder-rated Adversity composite score}
    \item{\code{matingRater}}{Coder-rated Mating composite score}
    \item{\code{positivityRater}}{Coder-rated Positivity composite score}
    \item{\code{negativityRater}}{Coder-rated Negativity composite score}
    \item{\code{deceptionRater}}{Coder-rated Deception composite score}
    \item{\code{socialityRater}}{Coder-rated Sociality composite score}
  }
}
\details{
This file contains data from 204 participants who rated their own situations
using the RSQ. Those RSQ ratings were composited to form the 8 DIAMONDS
situation characteristics. Those are duty, intellect, adversity, mating,
positivity, negativity, deception, and sociality. Later, an external set of
raters (4 each) read the situations as described the participants and rated
them on the RSQ. These external ratings were averaged and 8 DIAMONDS composites
were formed. Finally, the situation descriptions were read and coded for the
prescence (1) vs. absence (0) of 39 situation cues (e.g., with family vs not).
}


\references{
Rauthmann, J. F., Gallardo-Pujol, D., Guillaume, E. M., Todd, E., Nave, C. S.,
Sherman, R. A., Ziegler, M., Jones, A. B., & Funder, D. C. (2014). The
situational eight DIAMONDS: A taxonomy of major dimensions of situation
characteristics. Journal of Personality and Social Psychology, 107(4), 677-718.
}

\examples{
data(lensData)
head(lensData)
}
\keyword{datasets}