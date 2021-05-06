\name{modelSummary}
\alias{modelSummary}
\title{summary of results for lm model}
\description{
This is a modified version of summary for use with an lm, glm, or lmer object.  It provides results that align better
with Brauer/Curtin perspective on these linear models from their graduate statistics series}
\usage{
modelSummary(Model, t = TRUE, Print= TRUE, Digits = 4)
}
\arguments{
 \item{Model}{a linear model, produced by \code{lm}.  }
 \item{t}{Indicates if t-statistics (TRUE; Default) or F-statistics should be reported for 
 tests of parameter estimates}
 \item{Print}{Print output to screen.  Default is TRUE}
 \item{Digits}{Number of digits for values in coefficients table.  Default = 4}
}
\details{
Reports model summary results from an lm object.  Results include parameter estimates and their tests,
SSE, model R2
}
\value{
Returns a list with results for model.
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\seealso{summary, modelR2}
\examples{
##NOT RUN
##m = lm(FPS~BAC+TA, data=BAC)
##modelSummary(m)
}
\keyword{regression}
