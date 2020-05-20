#' Model #3 of Guillier et al. 2020 pre-print.
#' This model takes into account the effect of Temperature. 
#' 3 parameters have to be estimated log10Dref, zT and n
#' 
#' @param Temp Temperature (°C)
#' @param Tref Reference temperature
#' @param log10Dref log10D at Tref
#' @param zT Temperature increase related to decrease of D
#' @param n shape parameter helping to describe the non linear of T on log10D
#' 
#' @return
#' @export
#'
#' @examples
coronavirus_model3<-function(Temp,Tref,log10Dref,zT,n)
{log10DT<-log10Dref-((Temp-Tref)/zT)^n
  return(log10DT)
}