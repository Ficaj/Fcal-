
ipak <- function(pkg) {
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg))
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}



packages <-
  c("shinythemes",
    "data.table",
    "shinythemes",
    "rgl",
    "ggpmisc",
    "knitr",
    "markdown",
    "shinyFiles",
    "cowplot",
    "grid",
    "gridExtra",
    "gtable",
    "gridBase",
    "stringr")

ipak(packages)


###################################### vypočet inv flow  ########################################################



q_obtok = function(k,sf,rs,rv,hv, hpv1,rpv1,l, qc, qpakr, pouzit_k,  hloubka_zvodneni, ks)
{
  
  hv = hloubka_zvodneni - hv
  hpv1 = hloubka_zvodneni - hpv1
  
  
  
  vysledek = data.frame(qobt = 0, ks = 0, qin = 0)
  
  if(pouzit_k == 0)
    ks = k
  
  else
    ks = ks
  
  
  
  vysledek$ks = ks
  
  
  qp = (3.14 * ks * ((hpv1 * hpv1) - (hv * hv)))/log(rpv1/rv)
  
  
  qin = (qp*l)/hv
  
  
  vysledek$qin = round(qin,5)
  
  
  vysledek$qobt = round(((qc) - (qpakr) - qin),5)
  
  
  return(vysledek)
}



q_obtok2 = function(k,sf,rs,rv,hv, hpv1,rpv1,l, qc, qpakr, qin, pouzit_k)
{
  vysledek = list(qobt = 0, ks = 0, qin = 0)
  
  
  
  
  # ks = (k*log((rs + rv)/rv))/(sf+log((rs)/rv))
  
  vysledek$ks = 0
  
  vysledek$qin = round(qin,5)
  
  vysledek$qobt = round(((qc) - (qpakr) - qin),5)
  
  return(vysledek)
}




q_obtok3 = function( qc, qpakr, qin)
{
  vysledek = list(qobt = 0, ks = 0, qin = 0)
  
  
  vysledek$qin = round(qin,5)
  
  vysledek$qobt = round(((qc) - (qpakr) - qin),5)
  
  return(vysledek)
}















