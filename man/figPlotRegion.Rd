\name{figPlotRegion}
\alias{figPlotRegion}
\title{Sets up a plot region for later plotting}
\description{
  Sets up a plot region for later plotting with fig functinos.  Typically use is to establish the x and y ranges for region and otherwise leave blank for later drawing with fig functions.
}
\usage{figPlotRegion(x, y, xlab = NA, ylab = NA, axes=FALSE, type='n')}
\arguments{
  \item{x,y}{min and max for x and y plot region}
  \item{xlab, ylab}{Labels for x and y axes.  Typically left blank (NA)}
  \item{axes}{a logical value indicating whether both axes should be drawn on the plot.  Typically not included (FALSE)}
  \item{type}{1-character string giving the type of plot desired. Typically no data are plotted ('n').  see type in plot() for more info}
  }
\value{
  None
}
\seealso{
plot(), figLabDefaults(), figSetDefaults(), figNewDevice(), figLines(),figPoints()
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