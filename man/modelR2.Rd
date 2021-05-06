\name{modelR2}
\alias{modelR2}
\title{Model R2, adjusted R2 and F-test}
\description{
Reports model R2, adjusted R2, and F-test of  model R2.
}
\usage{
modelR2(Model, Print=TRUE)
}
\arguments{
  \item{Model}{an lm model object}
  \item{Print}{print results to screen.  Default is TRUE}
}
\value{
Returns full list object from modelSummary() with many stats
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\seealso{lm, modelSummary, summary}
\examples{
##NOT RUN
##m = lm(FPS~BAC+TA, data=BAC)
##modelR2(m)
}
\keyword{manip}