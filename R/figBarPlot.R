figBarPlot <-function(Means, ylim=NULL, lab.text=NULL, main.text=NULL, se=NULL, bars.col= NULL, bars.density=NULL, bars.angle=NULL, bars.space=NULL, scale.cex=NULL, lab.cex=NULL, lab.font=NULL, ci.plot=NULL, ci.col=NULL, ci.lty=NULL, ci.lwd = NULL, ci.width = NULL)
{
  
  #get defaults for barplot2() if not over-rided by passing in
  if (is.null(ci.col)) ci.col = getOption('FigPars')$ci.col
  if (is.null(ci.lty)) ci.lty = getOption('FigPars')$ci.lty
  if (is.null(ci.lwd)) ci.lwd = getOption('FigPars')$ci.lwd
  if (is.null(ci.plot)) ci.plot = getOption('FigPars')$ci.plot
  if (is.null(ci.width)) ci.width = getOption('FigPars')$ci.width
  if (is.null(scale.cex)) scale.cex = getOption('FigPars')$scale.cex
  if (is.null(lab.cex)) lab.cex = getOption('FigPars')$lab.cex
  if (is.null(lab.font)) lab.font = getOption('FigPars')$lab.font
  if (is.null(bars.col)) bars.col = getOption('FigPars')$bars.col
  
  if(ci.plot)
  {
    ci.l = Means - se
    ci.u = Means + se
  }

  if(is.null(bars.space)){
    barplot2(height=t(Means), ylim=ylim, xlab = lab.text,
             plot.ci=ci.plot, ci.l=t(ci.l), ci.u=t(ci.u), 
             ci.color=ci.col, ci.lty=ci.lty, ci.lwd=ci.lwd, ci.width=ci.width, 
             cex.names=scale.cex, font.lab=lab.font, cex.lab=lab.cex,
             col= bars.col, density = bars.density, angle = bars.angle,
             axes=FALSE, ylab = '', main = main.text, beside = TRUE)
  }else{
    barplot2(height=t(Means), ylim=ylim, xlab = lab.text,
             plot.ci=ci.plot, ci.l=t(ci.l), ci.u=t(ci.u), 
             ci.color=ci.col, ci.lty=ci.lty, ci.lwd=ci.lwd, ci.width=ci.width, 
             cex.names=scale.cex, font.lab=lab.font, cex.lab=lab.cex,
             col= bars.col, density = bars.density, space = bars.space, angle = bars.angle,
             axes=FALSE, ylab = '', main = main.text)
  }
}







