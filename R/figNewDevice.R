figNewDevice <- function(Width=7,Height=7, Type='window', File, Res=300)
  #opens a graphical device.  If figure parameters are not set in options, sets 
  #them to our lab's defaults.
{
  #set up options for default figure parameters
  if(is.null(getOption('FigPars'))) 
  {
    FigPars = figLabDefaults()
    figSetDefaults(FigPars)
  }else
  {
    FigPars = options('FigPars')
  }

  switch(toupper(Type),
  WINDOW = 
  {
    dev.new(height=Height, width=Width, noRStudioGD=TRUE)
  },
  PDF =
  {
    pdf(file=File,width=Width, height=Height)
  },

  TIFF =
  {
    tiff(filename=File, width=Width,height=Height, res=Res, units='in')
  }
  )  #end switch
  par(FigPars$xpd)
  
  return(dev.cur())
}