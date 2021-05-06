\name{figBarPlot}
\alias{figBarPlot}
\title{Wrapper for standarized use of barplot2() from gplots}
\description{
  Wrapper function for standardized use of barplot2() with lab defaults for display
}
\usage{figBarPlot(Means, ylim=NULL, lab.text=NULL, main.text=NULL, se=NULL, 
                  bars.col= NULL, bars.density=NULL, bars.angle=NULL, bars.space=NULL,
                  scale.cex=NULL, lab.cex=NULL, lab.font=NULL, 
                  ci.plot=NULL, ci.col=NULL, ci.lty=NULL, ci.lwd = NULL, ci.width = NULL)}
\arguments{
  \item{Means}{matrix of means to plot.}
  \item{ylim}{vector of min and max for y axis}
  \item{lab.text}{label for x-axis}
  \item{main.text}{main label for plot.  See barplot2}
  \item{se}{standard error of mean for CI plotting, if needed}
  \item{bars.col,bars.density, bars.angle, bars.space}{color, density, angle, and space for bars. see barplot2 for additional detail} 
  \item{scale.cex}{cex for x axis scale}  
  \item{lab.font, lab.cex}{cex and font for x axis label } 
  \item{ci.plot}{boolean to indicate if CIs should be plotted}    
  \item{ci.col,ci.lty,ci.lwd,ci.width}{col, lty, lwd, and width of CI lines}    
  }
\value{
  None
}
\seealso{
barplot2(), figLabDefaults(), figSetDefaults(), figNewDevice(), figLines(),figLines()
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
##           bars.col=bars.col,bars.density=bars.density, 
##           bars.angle = bars.angle)
##figAxis(side=2,lab.text='Startle Response', scale.at=seq(0,120,by=20))
##figLegend('topright', legend=colnames(Means),fill=bars.col, angle=bars.angle,
## density=bars.density)

}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\keyword{graphic} 