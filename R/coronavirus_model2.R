#' Model #2 of Guillier et al. 2020 pre-print.
#' This model takes into account the effect of Temperature. 
#' 2 parameters have to be estimated log10Dref and zT
#' 
#' @param Temp Temperature (°C)
#' @param Tref Reference temperature
#' @param log10Dref log10D at Tref
#' @param zT Temperature increase related to decrease of D
#' @return
#' @export
#'
#' @examples
coronavirus_model2<-function(Temp,Tref,log10DTref,zT)
{log10DT<-log10DTref-((Temp-Tref)/zT)^2
  return(log10DT)
}