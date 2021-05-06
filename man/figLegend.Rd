\name{figLegend}
\alias{figLegend}
\title{Wrapper for standarized use of figLegend()}
\description{
  Wrapper function for standardized use of Legend() with lab defaults for display
}
\usage{figLegend(x, y=NULL, legend, fill=NULL, border=NULL, 
angle=NULL, density=NULL, pch=NULL, leg.cex=NULL, leg.lty=NULL, leg.lcol=NULL,
leg.lwd=NULL, leg.font=NULL, leg.bty=NULL)}
\arguments{
  \item{x,y}{the x and y co-ordinates to be used to position the legend. They can be specified 
by keyword or in any way which is accepted by xy.coords: See 'Details' in legend()}
  \item{legend}{a character or expression vector of length = 1 to appear in the legend. Other 
objects will be coerced by as.graphicsAnnot.}
  \item{fill}{if specified, this argument will cause boxes filled with the specified colors (or shaded in the specified colors) to appear beside the legend text.}
  \item{border}{border of box surrounding legend points. see fill}
  \item{angle}{angle of shading lines.}
  \item{density}{the density of shading lines, if numeric and positive. If NULL or negative or NA color filling is assumed.}
  \item{pch}{the plotting symbols appearing in the legend, as numeric vector or a vector of 1-character strings (see points). Unlike points, this can all be specified as a single multi-character string. Must be specified for symbol drawing.} 
  \item{leg.cex,leg.lty,leg.lcol, leg.lwd,leg.font,leg.bty}{cex,lty, col, lwd, font, and bty for legend.  Defaults to values in options if NULL.  Set leg.lty & leg.lwd to NA if you want bars rather than lines in legend}  
  }
\value{
  None
}
\seealso{
legend(), figLabDefaults(), figSetDefaults(), figNewDevice(), figLines(),figLines()
}
\examples{
##not run
##Means = matrix(c(70,65,68,91,100,90), nrow=2,ncol=3, byrow=TRUE)
##colnames(Means) = c('ITI', 'CUE-', 'CUE+')
##rownames(Means) = c('Non-deprived', 'Deprived')
##se = matrix(c(5,10,4,5,10,4), nrow=2,ncol=3, byrow=TRUE)

##bars.col = c('gray', 'white', 'black')
##bars.density = c(-1,-1,10)  #negative density suppresses lines
##bars.angle = c(0,0,45)

##figNewDevice()
##figBarPlot(Means,ylim=c(0,130), lab.text='Group', ci.plot=TRUE, se=se,
##           bars.col=bars.col,bars.density=bars.density, bars.angle = bars.angle)
##figAxis(side=2,lab.text='Startle Response', scale.at=seq(0,120,by=20))
##figLegend(x='topright', legend=colnames(Means),fill=bars.col, 
##          angle=bars.angle, density=bars.density)
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\keyword{graphic} 