\name{figAxis}
\alias{figAxis}
\title{Wrapper for standarized use of axis()}
\description{
  Wrapper function for standardized use of axis() with lab defaults for display
}
\usage{figAxis(side, lab.text, scale.at=NULL, scale.text=NULL, 
                    scale.lwd=NULL, scale.cex=NULL, scale.font=NULL,
                    lab.line= NULL, lab.cex=NULL, lab.font=NULL)}
\arguments{
  \item{side}{an integer specifying which side of the plot the axis is to be drawn on. The axis is placed as follows: 1=below, 2=left, 3=above and 4=right.}
  \item{lab.text}{name label for the axis}
  \item{scale.at}{the points at which tick-marks are to be drawn. Non-finite (infinite, NaN or NA) values are omitted. By default (when NULL) tickmark locations are computed, see 'Details' below.}
  \item{scale.text}{this can either be a logical value specifying whether (numerical) annotations are to be made at the tickmarks, or a character or expression vector of labels to be placed at the tickpoints. ).}
  \item{scale.lwd, scale.font,scale.cex}{lwd, font, and cex for scale annotations.  Accessed from options if NULL}
  \item{lab.line, lab.cex,lab.font}{line number, cex, and font for axis label.  Accessed from options if NULL}  
  }
\value{
  None
}
\seealso{
axis(), figLabDefaults(), figSetDefaults(), figNewDevice(), figLines(),figLines()
}
\examples{
X = rep(2:9,4)+jitter(rep(0,32))
Y = X + rnorm(length(X),0,5)
m = lm(Y ~ X)
dNew = data.frame(X=seq(2,9,by=.01))
p = modelPredictions(m,dNew)
figNewDevice()  
figPlotRegion(x=c(0,10),y=c(0,10))
figConfidenceBand(p$X,p$Predicted,p$CILo,p$CIHi)
figPoints(X,Y)
figLines(p$X,p$Predicted)
figAxis(side=1,lab.text='X-axis 1', scale.at=seq(from=0,to=10,by=2))
figAxis(side=2,lab.text='Startle Response', scale.at=seq(from=0,to=10,by=2))
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\keyword{graphic} 