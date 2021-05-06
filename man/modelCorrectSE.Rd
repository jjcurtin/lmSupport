\name{modelCorrectSE}
\alias{modelCorrectSE}
\title{Calculates White (1980)'s heteroscedascity-corrected SEs and Tests for a linear model}
\description{
Calculates heteroscedascity-corrected SEs and associated tests for regression 
coefficients based on method described by White (1980) using hccm() from 
car package.  Prints tables with orginal and corrected results and returns 
corrected coefficient table
}
\usage{
modelCorrectSE(Model, Digits=3)
}
\arguments{
  \item{Model}{an unweighted linear model, produced by \code{lm}.}
  \item{Digits}{digits to print in table output.  Default =3}
}
\value{
Returns the lm coefficients table with corrected SEs and associated tests
}
\references{
  Fox, J. (2008).  
  Applied Regression Analysis and Generalized Linear Models,
  Second Edition. Sage.  
  
  Cribari-Neto, F. (2004). 
  Asymptotic inference under heteroskedasticity of unknown form.
  Computational Statistics and Data Analysis, 45, 215-233.
  
  Long, J. S. and Ervin, L. H. (2000).
  Using heteroscedasity consistent standard errors in the linear regression model. 
  The American Statistician, 54, 217-224.
  
  White, H. (1980).
  A heteroskedastic consistent covariance matrix estimator and a direct test of heteroskedasicity.  Econometrica, 48, 817-838.
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\seealso{
hccm() in car package
}
\examples{
##NOT RUN
##m = lm(FPS~BAC+TA, data=BAC)
##modelCorrectSE(m)
}
\keyword{regression}
