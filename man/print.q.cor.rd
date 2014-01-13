\name{print.q.cor}
\alias{print.q.cor}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Print q.cor object
}
\description{
Prints the results of a q.cor object in a more interpretable fashion. Also includes a convenient export option.
}
\usage{\method{print}{q.cor}(x, var.content = NULL, 
  initial = NULL, rnd = 2, EXPORT = FALSE, short = FALSE, ...)

}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
An object returned by the q.cor() function.
}
  \item{var.content}{
An optional vector containing the content of the items or variables used as the "set" in a q.cor analysis. If left NULL default content is created.
}
  \item{initial}{
An optional character element indicating the initial letters for the item codes or names in set. If left NULL "i" is used.
}
  \item{rnd}{
A numeric element specifying the number of places to round each correlation coefficient.
}
  \item{EXPORT}{
A file location to export the print results. If FALSE (default) no exportation is done.
}
  \item{short}{
A logical indicating whether long output (default) or short output is to be returned.
}
  \item{...}{
More arguments to pass to the print function.
}
}
\details{
A print function for the q.cor() function used to summarize the results of a q.cor object. This function easily adds the content of the items to the correlation table, sorts the correlation table, and allows the user to limit the table to only those items that are statistically significant at the p < .10 for the combined or .05 level for each gender by setting the short option = TRUE. In addition, the export option allows the user to output the results (either long or short) into a .csv file.
}

\author{
Ryne A. Sherman
}

\seealso{
\code{\link{q.cor}}, ~~~
}
\examples{
data(rbqv3.items)
data(RSPdata)
data(v2rbq)
names(v2rbq)
q.obj <- q.cor(RSPdata$sEXT, v2rbq, sex = RSPdata$ssex, fem = 1, male = 2, sims = 1000)
	#It might be necessary to adjust size of the width of your console to make this content fit.
print(q.obj) # Accepting only the default arguments
  # Taking advantage of the other arguments
print(q.obj, var.content = rbqv3.items, initial = "RBQ", short = TRUE, EXPORT = FALSE)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ q.cor }
\keyword{ print }% __ONLY ONE__ keyword per line
