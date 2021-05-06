\name{varPadString}
\alias{varPadString}
\title{Pads a string to fixed length}
\description{
  Pads a string to fixed length (StringLen) with leading character (PadChar).  If string length > StringLen, issues warning but returns original string
}
\usage{varPadString(X, StringLen, PadChar = '0')}
\arguments{
  \item{X}{String to pad}
  \item{StringLen}{Fixed length of output strings}
  \item{PadChar}{Character to use for padding}
}
\value{
  Returns string(s) with padding
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\examples{
  varPadString(c('1', '2', '300'),3,'0') 
}
\keyword{manip}