\name{figStripChart}
\alias{figStripChart}
\title{Create strip chart on plot}
\description{
  Adds a strip chart (variant of a rug plot that includes density info)
  to X (or other) axis on a plot 
}
\usage{figStripChart(x, side=1, sshift=0.3, adjoffset=1, strip.col='gray', 
                     strip.pch=15, strip.cex= 0.2)}
\arguments{
\item{x}{vector of data to plot}
\item{side}{axis for plot, 1=bottom (default), 2=left, 3= top, 4= right}
\item{sshift}{scaling parameter for location of plot.  Use default}
\item{adjoffset}{scaling parameter for dot spacing}
\item{strip.col}{color of dots.  Default is gray}
\item{strip.pch}{point type for dots.  Default is 15 (small dot)}
\item{strip.cex}{scaling parameter for size of dots}

}
\value{
  No value is returned
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\keyword{graphic} 