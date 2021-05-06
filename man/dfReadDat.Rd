\name{dfReadDat}
\alias{dfReadDat}
\title{Opens a tab-delimited dat file with typical Curtin lab settings}
\description{
Opens a tab-delimited data file with standard Curtin lab format which include
using a header and setting delimiter to tab and as.is=TRUE

If variable named SubID (default) or other text supplied by SubID variable 
exists in dat file, row names will be set with this variable 
and then variable is removed from new data frame.
}
\usage{dfReadDat(File, SubID = "SubID", SubIDDigits = NULL)}
\arguments{
  \item{File}{File name for .dat file including extension}
  \item{SubID}{String to indicate name of SubID variable.  Default is 'SubID'.  If set to NULL, rownames will not be altered}
  \item{SubIDDigits}{Length of SubID rowname string.  If NULL, will be set to max length in data}
}
\value{returns a data frame}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\seealso{
read.table(), read.delim(), write.table(), dfRownames()
}
\examples{
##dfReadDat('Sample1.dat)   #not executable unless Sample1.dat exists in path
##dfReadDat('Sample2.dat, SubID = 'subnum')   #not executable unless Sample2.dat exists in path
}
\keyword{manip}