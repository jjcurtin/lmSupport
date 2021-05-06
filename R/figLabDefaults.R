figLabDefaults <- function()
  #returns a list with default figure parameters for our laboratory.  This does NOT set these defaults in options().  
  #To do this, you must call figSetPars().  It is also accomplished by figNewDevice() if 
  #no defaults are saved in options when it is first called
{
  FigPars = list(plot.lwd =1, #plot region
                 bars.col='grey', bars.density=NULL, bars.angle=45,            #bars in bar plot
                 ci.lty='solid', ci.lwd=1, ci.width=0.5, ci.col='black', ci.plot=TRUE,       #ci bars for bars
                 errbars.cap=0.025, errbars.lwd=2, errbars.col='black',        #error/ci bars (outside of barplot)
                 lab.cex=1.25, lab.font=2, lab.line=2.5,                       #axis labels for axis
                 layout.display=TRUE,                                          #layout for multi-panels
                 leg.lty=1, leg.lwd=1, leg.lcol = 'black', leg.font=2,leg.cex=1, leg.bty='n',      #legend
                 lines.lwd=2,lines.col='black', lines.lty=1, lines.pch=NA,     #lines
                 points.lwd=2, points.col='black', points.bg='white', points.cex=1, points.pch=21, #points
                 scale.cex=1, scale.font=1,scale.lwd=1,                        #axis scale for axis
                 strip.col='gray',strip.pch=15,strip.cex=0.2,                  #strip plot
                 text.font=2, text.cex = 1.25, text.adj=c(0.5,0.5), text.col='black',   #text labels
                 xpd = NA)  #misc
  
  return(FigPars)
}