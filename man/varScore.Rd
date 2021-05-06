\name{varScore}
\alias{varScore}
\title{Creates a total score from a sum of items}
\description{
Creates a total score from a sum of items in a data frame.  Can do range checking for items, reverse scoring of items, and prorating for missing data.
}
\usage{varScore(Data, Forward, Reverse=NULL, Range = NULL, Prorate = TRUE, MaxMiss = .20)}
\arguments{
  \item{Data}{a dataframe that contains item scores among other variables}
  \item{Forward}{a vector of variable names to indicate the items that should be summed as is (in contrast to reverse scored).  All items should be listed in EITHER Forward or Reverse argument}
  \item{Reverse}{a vector of variable names to indicate the items that should be summed after reverse scoring the items.  Range arugment (see below) must also be specified to reverse score items.
Default is NULL which indicates no items are reverse scored.  All items should be listed in EITHER Forward or Reverse argument}
  \item{Range}{A numeric vector with two values for low and high anchor values for items.  Must be specified if any items will be reverse scored.  Used also to do range checking for all items.  Default is NULL which indicates no range checking and no reverse scored items}
  \item{Prorate}{A boolean to indicate if total score should be prorated for missing data. Default is TRUE.}
  \item{MaxMiss}{Maximum acceptable percentage of missing data before total score will be set to missing.  Implemented regardless if Prorate is TRUE or FALSE.  However, if Prorate is false, should  probably be set to 0}
}
\details{
This is a flexible routine to score measures that consist of sums of items.
}
\value{Returns vector of total scores for each participant}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\examples{
##not run
##varScore(d, c('I1', 'I3', 'I4'), Reverse= c('I2', 'I5'), 
##         Range = c(1,5), Prorate=TRUE, MaxMiss = .25) 
}
\keyword{manip}