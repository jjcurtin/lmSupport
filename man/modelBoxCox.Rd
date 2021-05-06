\name{modelBoxCox}
\alias{modelBoxCox}
\title{Calculates lambda for Box-Cox power transformation}
\description{
Calcluates and plots log-liklihoods lambda for power transformation of response variable.  
Reports chi-square test of lambda <> 1.
All values of Y must > 0 or function will crash.  Add offset to Y if necessary (see example).
Default lambda range is -2 to 2.    Uses boxCox() from car package.
}
\usage{
modelBoxCox(Model, Lambdas = seq(-2, 2, by = 0.1))
}
\arguments{
  \item{Model}{an unweighted linear model, produced by \code{lm}.}
  \item{Lambdas}{a vector of lambda values to plot.  Default is seq(-2,2,by=0.1)}
}
\references{
Box, G. E. P. & Cox, D. R. (1964). 
An analysis of transformations (with discussion).  
Journal of the Royal Statistical Society, 26, 211-252.
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\seealso{
boxCox(), boxcox()
}
\examples{
##Not run
##m = lm(FPS + 99 ~ BAC+TA, data=BAC)
##modelBoxCox(m)
}
\keyword{regression}
