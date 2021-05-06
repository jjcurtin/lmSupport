\name{varPlot}
\alias{varPlot}
\title{Creates histogram, optional rug/strip and density plots, and generates univariate descriptive statistics}
\description{
Represents important aspects of a variable/vector both visually (histogram, rug or strip, and density plots) and with descriptive statistics of varying detail
}
\usage{
varPlot(TheVar,  VarName = '', IDs = NULL, AddPoints = 'Strip', 
        AddDensity = TRUE, Detail = 2)
}
\arguments{
  \item{TheVar}{A variable/vector to visualize}
  \item{VarName}{The variable name of TheVar as string. Default = ''}
  \item{IDs}{Rownames for interactive identification of data points, Default is NULL with no identification done}
  \item{AddPoints}{Strip (default), Rug, or None}
  \item{AddDensity}{TRUE (default) or FALSE to include density plot}
  \item{Detail}{1-3 of increasing detail for descriptives using varDescribe()}
}
\value{
Prints descriptive statistics table and creates graphic as side effect.  Returns list with Indices, Rownames, and Values if identify is not NULL
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\seealso{
hist(), rug(), varStripPlot(), density(), varDescribe(), describe(), identify()
}
\examples{  
##NOT RUN
##data(BAC)
##varPlot(BAC$FPS, 'FPS') #default use strip
##varPlot(BAC$FPS, AddPoints='RUG')
##varPlot(BAC$FPS, IDs=rownames(BAC))
}
\keyword{ descriptives }
