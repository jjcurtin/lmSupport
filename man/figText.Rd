\name{figText}
\alias{figText}
\title{Wrapper for standarized use of text()}
\description{
  Wrapper function for standardized use of text() with lab defaults for display
}
\usage{figText(x, y, label, text.font = NULL, text.cex = NULL, text.adj = NULL, text.col=NULL)}
\arguments{
  \item{x,y}{coordinates to plot text}
  \item{label}{label/text to plot}
  \item{text.font}{Text font.  Accessed from options if NULL}
  \item{text.cex}{Text cex.  Accessed from options if NULL}
  \item{text.adj}{Text adj.  Accessed from options if NULL}
  \item{text.col}{Text color.  Accessed from options if NULL}
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
figText(0,9, 'Figure label')
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\keyword{graphic} 