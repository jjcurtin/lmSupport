varPadString <- function(X, StringLen, PadChar='0')
  #Takes a text string (like SubID) and makes it a uniform length by padding at front with
  #PadChar
{
  for (i in 1:length(X))
  {
    if (nchar(X[i]) <= StringLen)
    {
      X[i] = paste(paste(rep(PadChar,StringLen-nchar(X[i])),sep='', collapse=''), X[i], sep='')
    }
    else
    {
      warning(sprintf('Value with character length > %d detected: %s', StringLen, X[i]))
    }
  }
  return(X)
}