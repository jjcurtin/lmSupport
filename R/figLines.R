figLines <- function(x, y, lines.lwd=NULL, lines.lty=NULL, lines.col=NULL, lines.pch = NULL)
  #wrapper for plot with defaults for our typical use of lines() using 
  #our lab's default figure parameters 
{
  
  #get default if not over-rided by passing in
  if (is.null(lines.lwd)) lines.lwd = getOption('FigPars')$lines.lwd 
  if (is.null(lines.col)) lines.col = getOption('FigPars')$lines.col
  if (is.null(lines.lty)) lines.lty = getOption('FigPars')$lines.lty 
  if (is.null(lines.pch)) lines.pch = getOption('FigPars')$lines.pch 
  
  lines(x, y, lwd=lines.lwd, col=lines.col, lty=lines.lty,type='o', pch=lines.pch)
}