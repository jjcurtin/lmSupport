\name{figLines}
\alias{figLines}
\title{Wrapper for standarized use of lines()}
\description{
  Wrapper function for standardized use of lines() with lab defaults for display
}
\usage{figLines(x, y, lines.lwd=NULL, lines.lty=NULL, lines.col=NULL, lines.pch=NULL)}
\arguments{
  \item{x,y}{coordinate vectors of points to join}
  \item{lines.lwd}{Line width.  Accessed from options if NULL}
  \item{lines.lty}{Line type.  Accessed from options if NULL}
  \item{lines.col}{Line color.  Accessed from options if NULL}
  \item{lines.pch}{ponit type.  Default is no points.  See points() for other types.  Accessed from options if NULL}
  }
\value{
  None
}
\seealso{
lines(), figLabDefaults(), figSetDefaults(), figNewDevice(), figLines(),figPoints()
}
\examples{
figNewDevice()
figPlotRegion(x=c(0,5), y=c(0,10))
figLines(c(0,10),c(0,10))
figAxis(side=1,lab.text='X-axis 1', scale.at=seq(from=0,to=10,by=2))
figAxis(side=2,lab.text='Startle Response', scale.at=seq(from=0,to=10,by=2))
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\keyword{graphic} 