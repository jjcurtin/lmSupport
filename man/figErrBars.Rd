\name{figErrBars}
\alias{figErrBars}
\title{Wrapper for standarized use of error bars}
\description{
  Wrapper function for standardized use of error bars with segments() with lab defaults for display
}
\usage{figErrBars(x, y, yplus, yminus, errbars.cap = NULL, 
       errbars.lwd = NULL, errbars.col = NULL)}
\arguments{
  \item{x,y, yplus, yminus}{coordinate vectors of x and y points for error bars}
  \item{errbars.cap}{Width of caps on error bars.  Accessed from options if NULL}
  \item{errbars.lwd}{Line width.  Accessed from options if NULL}
  \item{errbars.col}{Line color.  Accessed from options if NULL}
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