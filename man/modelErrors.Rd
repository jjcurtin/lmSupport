\name{modelErrors}
\alias{modelErrors}
\title{Returns model errors (residuals) from lm object}
\description{
Simple wrapper to return model errors using residuals() function.  Implemented simply to match terminology to 610/710 GLM course.  Also prints(but does not return) model SSE
}
\usage{
modelErrors(Model)
}
\arguments{
  \item{Model}{an lm model obect}
}
\value{
Returns vector of model errors (residuals) from sample
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\seealso{residuals, lm}
\examples{
##NOT RUN
##data(BAC)
##m = lm(FPS~BAC+TA, data=BAC)
##modelErrors(m)
}
\keyword{manip}