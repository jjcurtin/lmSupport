\name{modelCompare}
\alias{modelCompare}
\title{F-tests for nested models}
\description{
Calculates F-test to compare two models to determine if ModelA significantly reduces SSE from ModelC.  Also reports Partial eta2 and Delta R2 for this model comparison.
ModelC should contain subset of ModelA regressors.}
\usage{
modelCompare(ModelC, ModelA)
}
\arguments{
 \item{ModelC}{a linear model, produced by \code{lm}.  
 This compact model should include a subset of regressors from ModelA}
 \item{ModelA}{a linear model, produced by \code{lm}}.  This augmented model should 
 include all regressors from ModelC plus additional regressors.
}
\details{
Calculates F test for model comparison
F =   ((sseC - sseA)/ (pA - pC)) / (sseA / (N-pA))
ndf = pA - pC
ddf = N -P
}
\value{
Returns a list with results for model comparison, sses, and other relevant fields
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\examples{
##NOT RUN
##mC = lm(FPS~BAC, data=BAC)
##mA = lm(FPS~BAC+TA, data=BAC)
##modelCompare(mC, mA)
}
\keyword{regression}
