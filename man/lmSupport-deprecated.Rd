\name{lmSupport-deprecated}
\alias{lmSupport-deprecated}
\alias{lm.boxCox}
\alias{lm.codeRegressors}
\alias{lm.correctSE}
\alias{lm.deltaR2}
\alias{lm.describeData}
\alias{lm.describeGroups}
\alias{lm.figSum}
\alias{lm.mergeData}
\alias{lm.pointEstimates}
\alias{lm.readDat}
\alias{lm.removeCases}
\alias{lm.renameVar}
\alias{lm.setContrasts}
\alias{lm.setRownames}
\alias{lm.stripChart}
\alias{lm.sumSquares}
\alias{lm.writeDat}

\title{Deprecated Functions in lmSupport Package}

\description{
  These functions are provided for compatibility with older versions of the \pkg{lmSupport} package 
  and may be removed eventually. These functions may not necessarily work as in previous versions of the \pkg{lmSupport} package.  It is strongly recommended that you update your code to use the new functions.
}

\usage{
lm.boxCox(...)
lm.codeRegressors(...)
lm.correctSE(...)
lm.deltaR2(...)
lm.describeData(...)
lm.describeGroups(...)
lm.figSum(...)
lm.mergeData(...)
lm.pointEstimates(...)
lm.readDat(...)
lm.removeCases(...)
lm.renameVar(...)
lm.setContrasts(...)
lm.setRownames(...)
lm.stripChart(...)
lm.sumSquares(...)
lm.writeDat(...)
}

\arguments{
  \item{\dots}{pass arguments down.}
}

\details{
\code{lm.boxCox} is now a synonym for the \code{\link{modelBoxCox}} function.
\code{lm.codeRegressors} is now a synonym for the \code{\link{varRegressors}} function.
\code{lm.correctSE} is now a synonym for the \code{\link{modelCorrectSE}} function.
\code{lm.deltaR2} is now a synonym for the \code{\link{modelCompare}} function.
\code{lm.describeData} is now a synonym for the \code{\link{varDescribe}} function.
\code{lm.describeGroups} is now a synonym for the \code{\link{varDescribeBy}} function.
\code{lm.figSum} is now a synonym for the \code{\link{varPlot}} function.
\code{lm.mergeData} is now a synonym for the \code{\link{dfMerge}} function.
\code{lm.pointEstimates} is now a synonym for the \code{\link{modelPredictions}} function.
\code{lm.readDat} is now a synonym for the \code{\link{dfReadDat}} function.
\code{lm.removeCases} is now a synonym for the \code{\link{dfRemoveCases}} function.
\code{lm.renameVar} is now a synonym for the \code{\link{varRename}} function.
\code{lm.setContrasts} is now a synonym for the \code{\link{varContrasts}} function.
\code{lm.setRownames} is now a synonym for the \code{\link{dfRownames}} function.
\code{lm.sumSquares} is now a synonym for the \code{\link{modelEffectSizes}} function.
\code{lm.stripChart} is now a synonym for the \code{\link{figStripChart}} function.
\code{lm.writeDat} is now a synonym for the \code{\link{dfWriteDat}} function.

}