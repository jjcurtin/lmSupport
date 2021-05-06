\name{figNewDevice}
\alias{figNewDevice}
\title{Opens device for graphing}
\description{
  Opens a device for graphing (window,pdf,tiff) and establishes default parameters for standardized graphs
}
\usage{figNewDevice(Width=7,Height=7, Type='window',File, Res=300)}
\arguments{
  \item{Width,Height}{the (nominal) width and height of the canvas of the plotting window in inches. Default = 7.}
  \item{Type}{Device type: Window, pdf,tiff. Devault = 'Window'.  Window will open a window using either windows(), quartz(), or X11() depending on the OS.  tiff and pdf will graph to that type of file.}
  \item{File}{File name as string.  Used by tiff and pdf}
  \item{Res}{The nominal resolution in ppi used by tiff}. Default = 300
}
\value{
  None
}
\seealso{
figLabDefaults(), figSetDefaults(), windows(), tiff(), pdf()
}
\examples{
figNewDevice(Type='tiff',File='Test.tiff', Res=72)
figNewDevice(Type='Windows')
}
\author{John J. Curtin \email{jjcurtin@wisc.edu}}
\keyword{graphic} 