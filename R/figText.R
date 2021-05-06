figText <- function(x, y, label, text.font = NULL, text.cex = NULL, text.adj = NULL, text.col=NULL)
  #wrapper for plot with defaults for our typical use of text() using 
  #our lab's default figure parameters 
{
  #get default if not over-rided by passing in
  if (is.null(text.font)) text.font = getOption('FigPars')$text.font 
  if (is.null(text.cex)) text.cex = getOption('FigPars')$text.cex 
  if (is.null(text.adj)) text.adj = getOption('FigPars')$text.adj 
  if (is.null(text.col)) text.col = getOption('FigPars')$text.col 

  text(x=x, y=y, label=label, font=text.font, cex=text.cex, adj=text.adj, col=text.col)
}