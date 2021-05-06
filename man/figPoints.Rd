\name{figPoints}
\alias{figPoints}
\title{Wrapper for standarized use of points()}
\description{
  Wrapper function for standardized use of points() with lab defaults for display
}
\usage{figPoints(x, y, type='p', points.lwd=NULL, points.pch=NULL, 
                 points.col=NULL, points.bg=NULL, points.cex=NULL)}
\arguments{
  \item{x,y}{coordinate vectors of points to join}
  \item{type}{character indicating the type of plotting; actually any of the types as in plot.default.  Default = 'p'}
  \item{points.lwd}{Line width for points.  Accessed from options if NULL}
  \item{points.pch}{plotting 'character', i.e., symbol to use. This can either be a single character or an integer code for one of a set of graphics symbols. The full set of S symbols is available with pch = 0:18, see the examples below. (NB: R uses circles instead of the octagons used in S.).  Accessed from options if NULL}
  \item{points.col, points.bg, points.cex}{Point color, bg, and cex.  Accessed from options if NULL}
}
\value{
  None
}
\seealso{
points(), figLabDefaults(), figSetDefaults(), figNewDevice(), figLines(),figLines()
}
\examples{
X = rep(2:9,4)+jitter(rep(0,32))
Y = X + rnorm(length(X),0,5)
m = lm(Y ~ X)
dNew = data.frame(X=seq(2,9,by=.01))
p = modelPredictions(m,dNew)
figNewDevice()   #default is for windows(), can use quartz, tiff, or pdf as Type
figPlotRegion(x=c(0,10),y=c(0,10))
figConfidenceBand(p$X,p$Predicted,p$CILo,p$CIHi)
figPoints(X,Y)
figLines(p$X,p$Predicted)
figAxis(side=1,lab.text='X-axis 1', scale.at=seq(from=0,to=10,by=2))
figAxis(side=2,lab.text='Startle Response', scale.at=seq(from=0,to=10,by=2))
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\keyword{graphic} 