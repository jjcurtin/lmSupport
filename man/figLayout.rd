\name{figLayout}
\alias{figLayout}
\title{Wrapper for standarized use of layout()}
\description{
  Wrapper function for standardized use of layout() and layout.show()
}
\usage{figLayout(nRows, nCols, heights=rep(1,nRows), widths=rep(1,nCols), 
       layout.display=NULL)}
\arguments{
  \item{nRows, nCols}{integers specifying number of rows and columns in matrix}
  \item{heights}{vector indicating relative heights of rows;  Default is equal heights}
  \item{widths}{vector indicating relative widtsh of columns; Default is equal widths}
  \item{layout.display}{Boolean if outlines and numbers of panels should be displayed}
  }
\value{
  None
}
\seealso{
layout(), layout.show(), figLabDefaults(), figSetDefaults(), figNewDevice(), figLines(),figLines()
}
\examples{
X = rep(2:9,4)+jitter(rep(0,32))
Y = X + rnorm(length(X),0,5)
m = lm(Y ~ X)
dNew = data.frame(X=seq(2,9,by=.01))
p = modelPredictions(m,dNew)

figNewDevice()  
figLayout(2,1)
figPlotRegion(x=c(0,10),y=c(0,10))
figConfidenceBand(p$X,p$Predicted,p$CILo,p$CIHi)
figLines(p$X,p$Predicted)
figAxis(side=1,lab.text='X-axis 1', scale.at=seq(from=0,to=10,by=2))
figAxis(side=2,lab.text='Startle Response', scale.at=seq(from=0,to=10,by=2))

figPlotRegion(x=c(0,10),y=c(0,10))
figPoints(X,Y)
figAxis(side=1,lab.text='X-axis 1', scale.at=seq(from=0,to=10,by=2))
figAxis(side=2,lab.text='Startle Response', scale.at=seq(from=0,to=10,by=2))
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\keyword{graphic} 