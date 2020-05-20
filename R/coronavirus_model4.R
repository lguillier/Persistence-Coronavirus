#' Model #4 of Guillier et al. 2020 pre-print.
#' This model takes into account the effect of Temperature and relative humidity on log10D. 
#' 3 parameters have to be estimated log10Dref, zT, and zRH
#' 
#' @param Temp Temperature (°C)
#' @param RH Relative humidity (%)
#' @param Tref Reference temperature
#' @param log10Dref log10D at Tref
#' @param zT Temperature increase related to decrease of D
#' @param zRH Relative humidity increase related to decrease of D
#'
#' @return
#' @export
#'
#' @examples
coronavirus_model4<-function(Temp,RH,Tref,log10Dref,zT,zRH)
{ log10D<-c()
  for (i in 1:length(RH)) {

  if (RH[i]<=99){
    log10D[i]<-log10Dref-((Temp[i]-Tref)/zT)^2-(RH[i]/zRH)
  }
  else
  {if(RH[i]>99){
    log10D[i]<-log10Dref-((Temp[i]-Tref)/zT)^2}
    
  }
  }
  return(log10D)}
  
