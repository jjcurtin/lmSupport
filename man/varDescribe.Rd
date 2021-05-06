\name{varDescribe}
\alias{varDescribe}
\title{Provides typical descriptive statistics for data frame}
\description{
Provides three levels of detail regarding descriptive statistics for a data frame.  
Based on describe() function from psych package
}
\usage{
varDescribe(Data, Detail = 2, Digits=2)
}
\arguments{
  \item{Data}{a data frame}
  \item{Detail}{Indicates level of detail for descriptives, 1=minimal, 2=typical (default), 3= detailed}
  \item{Digits}{Number of decimal places to display; NULL = display all sig digits.  Default =2.}
}
\value{
Returns table with descriptive statistics rounded to digits.
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\seealso{describe lm.describeGroups describe.by}
\examples{
##NOT RUN
##varDescribe(BAC)
##varDescribe(BAC, Detail=3)
##varDescribe(BAC, Detail=2, Digits=1)
}
\keyword{manip}