\name{varReverse}
\alias{varReverse}
\title{Reverse score an ordinal or boolean scored item/variable}
\description{
Reverse scores an item that was ordinal/interval scored or boolean.
}
\usage{
varReverse(Var, LowAnchor, HighAnchor)
}
\arguments{
  \item{Var}{A variable to reverse score.}
  \item{LowAnchor}{Absolute low value for variable}
  \item{HighAnchor}{Absoluate high value for variable}
}
\value{
Returns variable new (reversed) scores
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\seealso{recode}
\examples{
##d$Item5r = varReverse(d$Item5, 1, 5)
}
\keyword{manip}