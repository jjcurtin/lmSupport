varOdd =function(Numbers)
#Determines if an integer number is Odd
{
  if(all(Numbers ==round(Numbers)))
  {
    Result = Numbers%%2
  }
  else 
  {
      stop('Numbers must contain only integers')
  }
  return(Result==1)
}