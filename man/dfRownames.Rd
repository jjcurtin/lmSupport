\name{dfRownames}
\alias{dfRownames}
\title{Sets rownames to SubID}
\description{
Sets the row names of the data frame to the variable name listed as SubID.
SubID should be text name of variable.  
Also keeps number of characters constant by default (numeric SubID only) 
and removes SubID by default
}
\usage{
dfRownames(Data, SubID = "SubID", FixedWidth = TRUE, Remove = TRUE, MaxNumDigits=NULL)
}
\arguments{
  \item{Data}{a data frame with a variable containing subject ID numbers}
  \item{SubID}{Text name of subject ID variable.  Default is SubID}
  \item{FixedWidth}{logical.  If TRUE (default), all rowames will be the same length 
  by padding with leading 0's.  Only applies to numeric SubIDs}
  \item{Remove}{logical.  If TRUE (default), the subject ID variable will be 
  removed from data frame after setting rownames}
  \item{MaxNumDigits}{Length of rowname string.  If NULL, will be set to max length in data.  Only    
  applies to numeric SubIDs}
}
\value{
Returns data frame with rownames set (and SubID removed if requested)
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\examples{
d <- data.frame(SubID = c(1,2,3,10,20), v1=c(1,2,3,4,5), v2=c(1,NA,NA,2,4), data=1:5)
d=dfRownames(d)
}
\keyword{manip}