\name{dfWriteDat}
\alias{dfWriteDat}
\title{Saves dataframe as tab-delimited text file with typical Curtin lab parameters}
\description{
Saves a dataframe as a tab-delimited data file with standard Curtin lab format.
Will add rownames as a first column in .dat file and label this column with SubID
}
\usage{dfWriteDat(Data, File, SubID = "SubID")}
\arguments{
  \item{Data}{a dataframe}
  \item{File}{file name for .dat file}
  \item{SubID}{Name for new column with data from rownames.  
  If NULL, rownames will not be added to .dat file)  Default is 'SubID'}
}
\details{
Uses these parameters with write.table
no append, quote, separator is tab, no rownames, yes for columnns.
}
\value{no return value but creates .dat file in current wd}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\seealso{
read.table(), read.delim(), write.table()
}
\examples{
##Not run
##data(BAC)
##dfWriteDat(BAC, File="Test1.dat")
##dfWriteDat(BAC, File="Test2.dat", SubID = 'ID')
##dfWriteDat(BAC, File="Test3.dat", SubID = NULL)
}
\keyword{manip}