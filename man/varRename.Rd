\name{varRename}
\alias{varRename}
\title{Rename Variable in Dataframe}
\description{
  Renames a variable in specified dataframe. 
}
\usage{varRename(Data, From, To)}
\arguments{
  \item{Data}{a dataframe object}
  \item{From}{vector of original name(s) of variable(s) as strings}
  \item{To}{vector of new name(s) of variable(s) as strings}
}
\value{
  Returns dataframe with new variable names for specified variable(s)
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\examples{
  d = data.frame(x=1:10, y=11:20)
  names(d)
  d = varRename(d, c('x', 'y'), c('x1', 'y1'))
  names(d)
}
\keyword{manip}