\name{modelEffectSizes}
\alias{modelEffectSizes}
\title{Calculates effect size indices based on Sums of Squares}
\description{
Calculates unique SSRs, SSE, SST.  Based on these SSs, it calculates 
partial eta2 and delta R2 for all effects in a linear model object.  
For categorical variables coded as factors, it calculates these for multi-df effect.
Manually code regressors to get 1 df effects
Uses car::Anova() with Type 3 error
}
\usage{
modelEffectSizes(Model, Print = TRUE, Digits = 4)
}
\arguments{
  \item{Model}{a linear model, produced by \code{lm}}
  \item{Print}{Display results to screen.  Default = TRUE}
  \item{Digits}{Number of digits for printing effect sizes}
}
\value{
Returns a list with fields for effect sizes, SSE, and SST.
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\seealso{
Anova()
}
\examples{
##NOT RUN
##m = lm(FPS~BAC+TA, data=BAC)
##modelEffectSizes(m)
}
\keyword{regression}
