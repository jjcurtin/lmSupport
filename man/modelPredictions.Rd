\name{modelPredictions}
\alias{modelPredictions}
\title{Provides predicted values for sample or new data.   New predictions include SEs}
\description{
If no data are provided, modelPredictions returns a numeric vector predicted values for the sample, functioning as a simple wrapper for fitted.values().  If a dataframe with new values for Xs are provided, modelPredictions adds prediced values and SEs for these new data to the dataframe using predict() from car package.
}
\usage{
modelPredictions(Model, Data=NULL, Label = NULL, Type = 'response')
}
\arguments{
  \item{Model}{a linear model, produced by \code{lm}.}
  \item{Data}{a dataframe containg cases for predictions.  Must include all regressors from model.  Default is NULL with predictions returned for the current sample.}
  \item{Label}{A string label to append to variable names for predicted values, CIs and SE.  Default is NULL with no append}
  \item{Type}{'response' or 'link'.  Used only for glm objects.  see predict()}
}
\value{
If Data=NULL, returns a numeric vector of predicted values for sample.   If Data are provided, adds four new columns at the front of the dataframe  These variables are named Predicted (prediced value), CILo (lower bound of - 1 SE from Predicted), CIHi (upper bound of + 1 SE), and SE (Standard error of predicted value).  NOTE: For GLM, +-1 SE are calculated on the link scale and then converted to the response scale (which will be asymetric) if Type = response.  
If Label is not NULL, than Label is appended to end of these four variable names.
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\seealso{
predict(), fitted.values()
}
\examples{
##NOT RUN
##make plot of predicted values with 1SE error bands for CAN
##m = lm(interlocks~assets+nation, data=Ornstein) 
##dNew = data.frame(assets = seq(1000,100000, by=1000),nation='CAN') 
##dNew = modelPredictions(m, dNew)
##plot(dNew$assets,dNew$Predicted, type = 'l', col= 'red')
##lines(dNew$assets,dNew$CILo, type = 'l', col= 'gray', lwd =.5)
##lines(dNew$assets,dNew$CIHi, type = 'l', col= 'gray', lwd =.5)

##Return predicted values for sample
##P = modelPredictions(m)
} 
\keyword{regression}
