figPoints <- function(x, y, type='p', points.lwd=NULL, points.pch=NULL, points.col=NULL, points.bg=NULL, points.cex=NULL)
  #wrapper for plot with defaults for our typical use of points() using 
  #our lab's default figure parameters 
{

  #get default if not over-rided by passing in
  if (is.null(points.lwd)) points.lwd = getOption('FigPars')$points.lwd 
  if (is.null(points.col)) points.col = getOption('FigPars')$points.col 
  if (is.null(points.bg)) points.bg = getOption('FigPars')$points.bg 
  if (is.null(points.cex)) points.cex = getOption('FigPars')$points.cex 
  if (is.null(points.pch)) points.pch = getOption('FigPars')$points.pch 
  
  points(x, y, lwd=points.lwd, col=points.col, bg=points.bg, cex=points.cex, pch=points.pch)
}