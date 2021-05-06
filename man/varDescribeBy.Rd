\name{varDescribeBy}
\alias{varDescribeBy}
\title{Provides common desriptives for dataframe by factor(s)}
\description{
Provides commons descriptive statistics for a data frame 
split on some factor or combination of factors.
Essentially a wrapper for varDescribe() and by().
}
\usage{
varDescribeBy(Data, IVList)
}
\arguments{
  \item{Data}{a dataframe}
  \item{IVList}{list of one or more factors from data frame}
}
\value{
An object of class "by", giving the results from varDescribe() applied to each subset. 
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\examples{
##NOT RUN
##varDescribeBy(Adler,list(Adler$expectation,Adler$instruction))
}
\keyword{summary}
