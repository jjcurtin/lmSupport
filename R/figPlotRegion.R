figPlotRegion <- function(x, y, xlab = NA, ylab = NA, axes=FALSE, type='n')
#wrapper for plot with defaults for our typical use of blank plot region with
#no data, axes, or labels  
{
  plot(x, y, xlab=xlab, ylab=ylab, axes=axes,type=type)
}