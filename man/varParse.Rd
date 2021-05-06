\name{varParse}
\alias{varParse}
\title{Returns a subset of digits from a Number}
\description{
  Returns a subset of digits from a Number. 
}
\usage{varParse(Number, UpperDigit=1, LowerDigit=1)}
\arguments{
  \item{Number}{Number to parse}
  \item{UpperDigit}{Location in base ten of upper end of digits to return}
  \item{LowerDigit}{Location in base ten of lower end of digits to return}
}
\value{
  Returns a subset of the digits in Number
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\examples{
  varParse(1234,100,10) 
  varParse(1234,1,1)
  varParse(1234,1000,1000)
}
\keyword{manip}