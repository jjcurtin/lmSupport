\name{modelCaseAnalysis}
\alias{modelCaseAnalysis}
\title{Provides graphs and/or tests for problematic cases for a linear model}
\description{
Provides diagnositic graphs and visual cut points for identification of points 
that are univaraite outliers, high leverage, regression outliers, and/or influential
}
\usage{
modelCaseAnalysis(Model, Type = "RESIDUALS", Term = NULL, ID = row.names(Model$model))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Model}{a linear model produced by \code{lm}.}
  \item{Type}{Type = c('RESIDUALS', 'UNIVARIATE', 'HATVALUES', 'COOKSD', 'DFBETAS', 'INFLUENCEPLOT' 'COVRATIO')
  RESIDUALS (default) = regression outliers, UNIVARIATE = univariate outliers,
  HATVALUES = leverage, COOKSD = model influence, DFBETAS= individual parameter influence, 
  INFLUENCEPLOT= leverage X influence, COVRATIO = inflation of SEs.}
  \item{Term}{Term from model to display.  Used only by DFBETAS.  DEFAULT is NULL with all terms displayed}
  \item{ID}{Use to identify points.  Default = row.names(Model$model).  NULL = no identification}
}
\value{
Side effect of plot is main goal for function.  Also returns a list with Rownames and CaseAnalysis Values for cases identified.  No list returned if DFBETAS without single term identified.  
}
\references{
Fox, J. (1991). 
Regression diagnostics. SAGE Series (79)
Quantitative Applictions in the Social Science.
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\examples{
##NOT RUN
##m = lm(FPS~BAC+TA, data=BAC)
##Cases = modelCaseAnalysis(m,'RESIDUALS')
##BAC[Cases$Rownames,]

##modelCaseAnalysis(m,'DFBETAS')
##modelCaseAnalysis(m,'DFBETAS', 'assets')
}
\keyword{regression}
