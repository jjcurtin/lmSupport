\name{modelAssumptions}
\alias{modelAssumptions}
\title{Assess Linear Model Assumptions}
\description{
Provides diagnositic graphs and score tests to evaluate linear model assumptions 
of normality, constant variance and linearity.  Follows best practices and uses
many functions from car package.
}
\usage{
modelAssumptions(Model, Type = "NORMAL", ID=row.names(Model$model), one.page = TRUE)
}
\arguments{
  \item{Model}{a linear model produced by \code{lm}.}
  \item{Type}{Type =c('NORMAL', 'CONSTANT', 'LINEAR') for normally distributed residuals
  with constant variance, and linear (e.g., mean of residuals 0 for all Y')}
  \item{ID}{Use to identify points.  Default = row.names(model$model).  NULL = no identification}
  \item{one.page}{logical; display all graphs on one page if TRUE (Default).}
}
\references{
Fox, J. (1991). 
Regression diagnostics. SAGE Series (79)
Quantitative Applictions in the Social Science.
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\examples{
data(BAC)
m = lm(FPS~BAC+TA, data=BAC)
modelAssumptions(m,'NORMAL')
modelAssumptions(m,'CONSTANT')
modelAssumptions(m,'LINEAR', ID=NULL)
}
\keyword{regression}
