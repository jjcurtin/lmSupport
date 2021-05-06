figErrBars = function (x, y, yplus, yminus, errbars.cap = NULL, errbars.lwd = NULL, errbars.col = NULL) 
#based on code from Hmisc
#can simplify for add = TRUE or even drop code and use segments
  {
  
  if (is.null(errbars.cap)) errbars.cap = getOption('FigPars')$errbars.cap
  if (is.null(errbars.lwd)) errbars.lwd = getOption('FigPars')$errbars.lwd
  if (is.null(errbars.col)) errbars.col = getOption('FigPars')$errbars.col

  xcoord <- par()$usr[1:2]
  smidge <- errbars.cap * (xcoord[2] - xcoord[1])/2
  segments(x, yminus, x, yplus, lty = 1, lwd = errbars.lwd, col = errbars.col)
  if (par()$xlog) {
    xstart <- x * 10^(-smidge)
    xend <- x * 10^(smidge)
  }
  else {
    xstart <- x - smidge
    xend <- x + smidge
  }
  segments(xstart, yminus, xend, yminus, lwd = errbars.lwd, lty = 1, 
           col = errbars.col)
  segments(xstart, yplus, xend, yplus, lwd = errbars.lwd, lty = 1, 
           col = errbars.col)
  return(invisible())
}