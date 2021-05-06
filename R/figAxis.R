figAxis <- function(side, 
                    lab.text, scale.at=NULL, scale.text=NULL, 
                    scale.lwd=NULL, scale.cex=NULL, scale.font=NULL,
                    lab.line= NULL, lab.cex=NULL, lab.font=NULL)
  #wrapper for plot with defaults for our typical use of points() using 
  #our lab's default figure parameters 
{
  
  #get defaults for axis() if not over-rided by passing in
  if (is.null(scale.lwd)) scale.lwd = getOption('FigPars')$scale.lwd
  if (is.null(scale.cex)) scale.cex = getOption('FigPars')$scale.cex
  if (is.null(scale.font)) scale.font = getOption('FigPars')$scale.font
 
  axis(side, at=scale.at, labels=scale.text, lwd=scale.lwd, lwd.ticks=scale.lwd, 
       cex.axis = scale.cex, font.axis = scale.font,
       tick = TRUE, line = NA, pos = NA, outer = FALSE, 
       font = NA, lty = "solid", col = NULL, col.ticks = NULL,
       hadj = NA, padj = NA)

  #get defaults for mtext()
  if (is.null(lab.line)) lab.line = getOption('FigPars')$lab.line
  if (is.null(lab.cex)) lab.cex = getOption('FigPars')$lab.cex
  if (is.null(lab.font)) lab.font = getOption('FigPars')$lab.font

  mtext(text=lab.text, side = side, line = lab.line, font = lab.font, cex = lab.cex, 
        outer = FALSE, at = NA, adj = NA, padj = NA, col = NA)
}