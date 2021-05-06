figLayout <- function(nRows, nCols, heights = rep(1,nRows), widths = rep(1,nCols), layout.display=NULL)
  #wrapper for plot with defaults for our typical use of layout using 
  #our lab's default figure parameters 
{
  
  #get default if not over-rided by passing in
  if (is.null(layout.display)) layout.display = getOption('FigPars')$layout.display

  layout(matrix(1:(nRows*nCols), nRows, nCols, byrow = TRUE), heights = heights, widths = widths)
  if (layout.display)
    {layout.show(nRows*nCols)}
}