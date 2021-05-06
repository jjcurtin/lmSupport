\name{varRecode}
\alias{varRecode}
\title{Recode levels of variable}
\description{
Recodes levels of variable from old values to new values.  Levels in Old are recoded to levels in New by matching position in these two vectors.
}
\usage{
varRecode(Var, Old, New)
}
\arguments{
  \item{Var}{A variable to recode.}
  \item{Old}{Vector with original levels of Var}
  \item{New}{vector with new levels}
}
\value{
Returns variable with new levels
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\seealso{recode}
\examples{
##d$rIV1 = varRecode(d$IV1, c(-1,1), c(-.5, .5))
##d$rIV2 = varRecode(d$IV2, c(1,2,3), c(-.667, .333, .333))
##d$rIV3 = varRecode(d$IV3, c('A', 'B'), c('C', 'D'))
}
\keyword{manip}