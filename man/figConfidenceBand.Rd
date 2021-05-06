\name{figConfidenceBand}
\alias{figConfidenceBand}
\title{Creates confidence band for regression line}
\description{
  Adds a confidence band around a regression line in a plot 
}
\usage{figConfidenceBand(X, Y, CILo, CIHi, Color)}
\arguments{
  \item{X}{Vector of data for X to plot}
  \item{Y}{Vector of data for Y to plot}
  \item{CILo}{Vector of data for lower bound of confidence interval}
  \item{CIHi}{Vector of data for upper bound of confidence interval}
  \item{Color}{String to indicate R color.  Will be .15 transparent in plot}
}
\value{
  No value is returned
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\keyword{graphic}