#' Model #5 of Guillier et al. 2020 pre-print.
#' This model takes into account the effect of Temperature and relative humidity on log10D. 
#' 4 parameters have to be estimated log10Dref, zT, n, zRH
#'
#' @param Temp Temperature (°C)
#' @param RH Relative humidity (%)
#' @param Tref Reference temperature
#' @param log10Dref log10D at Tref
#' @param zT Temperature increase related to decrease of D
#' @param n shape parameter helping to describe the non linear of T on log10D
#' @param zRH Relative humidity increase related to decrease of D
#'
#' @return
#' @export log10D
#'
#' @examples
coronavirus_model5<-function(Temp,RH,Tref,log10Dref,zT,n,zRH)
{ log10D<-c()
  for (i in 1:length(RH)) {

  if (RH[i]<=99){
    log10D[i]<-log10Dref-((Temp[i]-Tref)/zT)^n-(RH[i]/zRH)
  }
  else
  {if(RH[i]>99){
    log10D[i]<-log10Dref-((Temp[i]-Tref)/zT)^n}
    
  }
  }
  return(log10D)}
  
