\name{figSetDefaults}
\alias{figSetDefaults}
\title{Saves list of graphing parameters in options}
\description{
  Saves a list of graphing parameters, typically created by figLabDefaults) in options for later use in graphing by fig functions.
}
\usage{figSetDefaults(FigPars)}
\arguments{
  \item{FigPars}{A list of graphing parameters}
}
\value{
  None
}
\seealso{
figLabDefaults(), options()
}
\examples{
FigPars = figLabDefaults()
FigPars$plot.lwd = 2
figSetDefaults(FigPars)
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\keyword{graphic} 