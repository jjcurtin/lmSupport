\name{varContrasts}
\alias{varContrasts}
\title{Set Factor Contrasts}
\description{
  Calculates contrast matrix for a specified contrast type.  Options include DUMMY, POC, HELMERT, EFFECTS
}
\usage{varContrasts(TheFactor, Type = "DUMMY", RefLevel = length(levels(TheFactor)), 
       POCList = NULL, Labels = NULL)}
\arguments{
  \item{TheFactor}{factor from dataframe}
  \item{Type}{type of contrast,  Options include DUMMY (default), POC, HELMERT, or EFFECTS}
  \item{RefLevel}{Reference level for contrast.  Only applies to DUMMY, HELMERT, and EFFECTS.  
  For DUMMY:
    RefLevel is numeric index of control/reference category (i.e. coded 0 for all regressors).
  For HELMERT:
    RefLevel = 1 indicates reverse HELMERT (i.e., last vs. earlier, second to last vs. earlier, etc), 
    RefLevel = 'Highest Level' indicates forward HELMERT (i.e., first vs. later, second vs. later, etc).
  For EFFECTS:
    RefLevel is numeric index of excluded level.  
}
  \item{POCList}{
  if Type = POC, a list of Contrasts is required in POCList; e.g., list(c(1,0,-1), c(-1,2,-1)).   Best to provide as whole numbers.  Function will re-scale to unit weighted contrasts.
}
  \item{Labels}{
  if Type = POC, Labels can be provided.  If NULL (Default), contrast labels are POC1, POC2, etc.
}
}
\details{
  Use the contrast matrix with contrasts() to set contrast for a specific factor in dataframe.
}
\value{
  Returns contrast matrix for indicated type of contrast.
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\seealso{\code{\link[stats]{contrasts}}}
\examples{
  d = data.frame(f=factor(c('f1', 'f2', 'f3')))
  contrasts(d$f)
  
  ##set as DUMMY with last category as reference
  contrasts(d$f) = varContrasts(d$f, Type='DUMMY', RefLevel = 3) 
  
  ##set as POC with user defined labels
  contrasts(d$f) = varContrasts(d$f, Type='POC', POCList = list(c(2,-1,-1),c(0,1,-1)), 
                   Labels = c('f1_v_f2f3', 'f2_v_f3')) 
                   
  ##set as reverse HELMERT                 
  contrasts(d$f) = varContrasts(d$f, Type='HELMERT', RefLevel = 1) 
  
  ##set as EFFECTS, excluding f3 vs. grand mean contrast
  contrasts(d$f) = varContrasts(d$f, Type='EFFECTS', RefLevel = 3) 
}
\keyword{manip}
\keyword{regression}
              