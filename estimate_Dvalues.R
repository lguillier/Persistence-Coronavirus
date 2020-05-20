

# Used library 
library(visreg)
library(ggplot2)

# Source Inactivation kinetics obtained with digitize_FigsTabs.r
rm(list=ls()) 
load("Output/inactivation_kinetics_preprint.Rdata")


#########
## TGEVa (Laude 1981)
########

## TGEVa1 pH 7

# 31°C
lm31TGEV<-lm(y~x,data=I31TGEV_log)
D31TGEVa1<--1/lm31TGEV$coefficients[2]
visreg(lm31TGEV,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))

# 35°C
lm35TGEV<-lm(y~x,data=I35TGEV_log)
D35TGEVa1<--1/lm35TGEV$coefficients[2]
visreg(lm35TGEV,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))

# 39°C
lm39TGEV<-lm(y~x,data=I39TGEV_log)
D39TGEVa1<--1/lm39TGEV$coefficients[2]
visreg(lm39TGEV,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))

# 43°C
lm43TGEV<-lm(y~x,data=I43TGEV_log)
D43TGEVa1<--1/lm43TGEV$coefficients[2]
visreg(lm43TGEV,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))

# 47°C
lm47TGEV<-lm(y~x,data=I47TGEV_log)
D47TGEVa1<--1/lm47TGEV$coefficients[2]
visreg(lm47TGEV,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))

# 51°C
lm51TGEV<-lm(y~x,data=I51TGEV_log)
D51TGEVa1<--1/lm51TGEV$coefficients[2]
visreg(lm51TGEV,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))

# 55°C
lm55TGEV<-lm(y~x,data=I55TGEV_log)
D55TGEVa1<--1/lm55TGEV$coefficients[2]
visreg(lm55TGEV,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))

## TGEVa2

#Fig1b.JPG for TGEV at pH 8 

# 35°C
lm35TGEVa2<-lm(y~x,data=I35TGEVa2)
D35TGEVa2<--1/lm35TGEVa2$coefficients[2]
visreg(lm35TGEVa2,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))

# 39°C
lm39TGEVa2<-lm(y~x,data=I39TGEVa2)
D39TGEVa2<--1/lm39TGEVa2$coefficients[2]
visreg(lm39TGEVa2,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))

# 43°C
lm43TGEVa2<-lm(y~x,data=I43TGEVa2)
D43TGEVa2<--1/lm43TGEVa2$coefficients[2]
visreg(lm43TGEVa2,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))

# 47°C
lm47TGEVa2<-lm(y~x,data=I47TGEVa2)
D47TGEVa2<--1/lm47TGEVa2$coefficients[2]
visreg(lm47TGEVa2,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))

# 51°C
lm51TGEVa2<-lm(y~x,data=I51TGEVa2)
D51TGEVa2<--1/lm51TGEVa2$coefficients[2]
visreg(lm51TGEVa2,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))


#########
## SRASa
########

# SRAS Rabeneau (Table 1) Medium

#a1 without FCS
D56SRASraba1<-1/((7.18-1.8)/0.5)
D56SRASraba1

#a2 with FCS
D56SRASraba2<-1/((7.18-4.55)/0.5)
D56SRASraba2

# SRAS Rabeneau (Figure 2a b) surface  (HR inconnue)

# SRAS Rabeneau (Figure 2c d) suspension milieu RT

# without FCS
lm23SRARSa3<-lm(y~x,data=I23SRARSa3)
D23SRARSa3<--(1/lm23SRARSa3$coefficients[2])
visreg(lm23SRARSa3,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D23SRARSa3


# with FCS
lm23SRARSa4<-lm(y~x,data=I23SRARSa4)
D23SRARSa4<--(1/lm23SRARSa4$coefficients[2])
visreg(lm23SRARSa4,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D23SRARSa4


#####################
# SRASb  Darnell 2004
#########################

#56°C
I56SRAS_log$x<-I56SRAS_log$x/60
lm56SRAS<-lm(y~x,data=I56SRAS_log)
D56SRAS<--(1/lm56SRAS$coefficients[2])
visreg(lm56SRAS,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))

#65°C
I65SRAS_log$x<-I65SRAS_log$x/60
lm65SRAS<-lm(y~x,data=I65SRAS_log)
D65SRAS<--(1/lm65SRAS$coefficients[2])
visreg(lm65SRAS,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))


#########
## MERS
########

### MERS Leclercq

lm56MERS<-lm(y~x,data=I56MERS_log)
D56MERS<--(1/lm56MERS$coefficients[2])
visreg(lm56MERS,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D56MERS

lm65MERS<-lm(y~x,data=I65MERS_log)
D65MERS<--(1/lm65MERS$coefficients[2])
visreg(lm65MERS,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D65MERS


#########
## TGEVb
########

## TGEV Casanova et 2010 AEM

#########
## TGEVb1 20% RH
########


#20°C
lm20TGEVb1<-lm(y~x,data=I20TGEVb1)
D20TGEVb1<--(1/lm20TGEVb1$coefficients[2])
visreg(lm20TGEVb1,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D20TGEVb1

#40°C
lm40TGEVb1<-lm(y~x,data=I40TGEVb1)
D40TGEVb1<--(1/lm40TGEVb1$coefficients[2])
visreg(lm40TGEVb1,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D40TGEVb1


#########
## TGEVb2 50% RH
########

# 4°C
lm4TGEVb2<-lm(y~x,data=I4TGEVb2)
D4TGEVb2<--(1/lm4TGEVb2$coefficients[2])
visreg(lm4TGEVb2,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D4TGEVb2

#20°C
lm20TGEVb2<-lm(y~x,data=I20TGEVb2)
D20TGEVb2<--(1/lm20TGEVb2$coefficients[2])
visreg(lm20TGEVb2,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D20TGEVb2

#40°C
lm40TGEVb2<-lm(y~x,data=I40TGEVb2)
D40TGEVb2<--(1/lm40TGEVb2$coefficients[2])
visreg(lm40TGEVb2,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D40TGEVb2

#########
## TGEVb3 80% RH
########

lm4TGEV2<-lm(y~x,data=I4TGEV2)
D4TGEVb3<--(1/lm4TGEV2$coefficients[2])
visreg(lm4TGEV2,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))

lm20TGEV2<-lm(y~x,data=I20TGEV2)
D20TGEVb3<--(1/lm20TGEV2$coefficients[2])
visreg(lm20TGEV2,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))

lm40TGEV2<-lm(y~x,data=I40TGEV2_log)
D40TGEVb3<--(1/lm40TGEV2$coefficients[2])
visreg(lm40TGEV2,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))


#########
## MHV
########

## MHV Casanova et 2010 AEM

#########
## MHV1 20% RH
########


#20°C
lm20MHV1<-lm(y~x,data=I20MHV1)
D20MHV1<--(1/lm20MHV1$coefficients[2])
visreg(lm20MHV1,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))

#40°C
lm40MHV1<-lm(y~x,data=I40MHV1)
D40MHV1<--(1/lm40MHV1$coefficients[2])
visreg(lm40MHV1,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))



#########
## MHV2 50% RH
########

# 4°C
lm4MHV2<-lm(y~x,data=I4MHV2)
D4MHV2<--(1/lm4MHV2$coefficients[2])
visreg(lm4MHV2,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D4MHV2

#20°C
lm20MHV2<-lm(y~x,data=I20MHV2)
D20MHV2<--(1/lm20MHV2$coefficients[2])
visreg(lm20MHV2,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D20MHV2

#40°C
lm40MHV2<-lm(y~x,data=I40MHV2)
D40MHV2<--(1/lm40MHV2$coefficients[2])
visreg(lm40MHV2,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D40MHV2

#########
## MHV3 80% RH
########

#4°C
lm4MHV3<-lm(y~x,data=I4MHV3)
D4MHV3<--(1/lm4MHV3$coefficients[2])
visreg(lm4MHV3,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))


#20°C
lm20MHV3<-lm(y~x,data=I20MHV3)
D20MHV3<--(1/lm20MHV3$coefficients[2])
visreg(lm20MHV3,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D20MHV3

#40°C
lm40MHV3<-lm(y~x,data=I40MHV3)
D40MHV3<--(1/lm40MHV3$coefficients[2])
visreg(lm40MHV3,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D40MHV3


#########
## SARSCoV2a1
########

## SARS-CoV2 Chin et al. 2020 (Table A)
lm4SARSCoV2<-lm(y~x,data=I4SARSCoV2)
D4SARSCoV2<--(1/lm4SARSCoV2$coefficients[2])
visreg(lm4SARSCoV2,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D4SARSCoV2

lm22SARSCoV2<-lm(y~x,data=I22SARSCoV2)
D22SARSCoV2<--(1/lm22SARSCoV2$coefficients[2])
visreg(lm22SARSCoV2,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D22SARSCoV2

lm37SARSCoV2<-lm(y~x,data=I37SARSCoV2)
D37SARSCoV2<--(1/lm37SARSCoV2$coefficients[2])
visreg(lm37SARSCoV2,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D37SARSCoV2

lm56SARSCoV2<-lm(y~x,data=I56SARSCoV2)
D56SARSCoV2<--(1/lm56SARSCoV2$coefficients[2])
visreg(lm56SARSCoV2,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D56SARSCoV2

#D70SARSCoV2<-(6.8-5.34)/60
#D70SARSCoV2


#########
## SARSCoV2a2
########

## SARS-CoV2 Chin et al. 2020 (Table B)

#Plastic 
lm22SARSCoV2a2_65p<-lm(y~x,data=I22SARSCoV2a2_65p)
D22SARSCoV2a2_65p<--(1/lm22SARSCoV2a2_65p$coefficients[2])
visreg(lm22SARSCoV2a2_65p,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D22SARSCoV2a2_65p

#Stainless steel
lm22SARSCoV2a2_65s<-lm(y~x,data=I22SARSCoV2a2_65s)
D22SARSCoV2a2_65s<--(1/lm22SARSCoV2a2_65s$coefficients[2])
visreg(lm22SARSCoV2a2_65s,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D22SARSCoV2a2_65s



#########
## TGEVc
########

## TGEV Casanova et al. 2009 
lm25TGEVc1<-lm(y~x,data=I25TGEVc1)
D25TGEVc1<--(1/lm25TGEVc1$coefficients[2])
visreg(lm25TGEVc1,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D25TGEVc1

lm25TGEVc2<-lm(y~x,data=I25TGEVc2)
D25TGEVc2<--(1/lm25TGEVc2$coefficients[2])
visreg(lm25TGEVc2,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D25TGEVc2


#########
## MHVa1 et a2
########

## MHV Casanova et al. 2009 
lm25MHVa1<-lm(y~x,data=I25MHVa1)
D25MHVa1<--(1/lm25MHVa1$coefficients[2])
visreg(lm25MHVa1,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D25MHVa1

lm25MHVa2<-lm(y~x,data=I25MHVa2)
D25MHVa2<--(1/lm25MHVa2$coefficients[2])
visreg(lm25MHVa2,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D25MHVa2


#########
## HCoVa
########

## Bucknall et al 
# 229E (a1)
lm33HCoVa1<-lm(y~x,data=I33HCoVa1)
D33HCoVa1<--(1/lm33HCoVa1$coefficients[2])
visreg(lm33HCoVa1,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D33HCoVa1

lm37HCoVa1<-lm(y~x,data=I37HCoVa1)
D37HCoVa1<--(1/lm37HCoVa1$coefficients[2])
visreg(lm37HCoVa1,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D37HCoVa1

# OC43
lm33HCoVa2<-lm(y~x,data=I33HCoVa2)
D33HCoVa2<--(1/lm33HCoVa2$coefficients[2])
visreg(lm33HCoVa2,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D33HCoVa2

lm37HCoVa2<-lm(y~x,data=I37HCoVa2)
D37HCoVa2<--(1/lm37HCoVa2$coefficients[2])
visreg(lm37HCoVa2,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D37HCoVa2

#########
## MERSb (pensez à refaire en enlevant les premiers points: Fait à partir du 12 avril)
########

## van Doremalen et al 2013 Eurosurveilance
## Plastic b1

# Plastic 20°C – 40% RH
lmMERSb120_40<-lm(y~x,data=IMERSb120_40)
D20MERSb1_40<--(1/lmMERSb120_40$coefficients[2])
visreg(lmMERSb120_40,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D20MERSb1_40

# Plastic 30°C – 30% RH
lmMERSb130_30<-lm(y~x,data=IMERSb130_30)
D30MERSb1_30<--(1/lmMERSb130_30$coefficients[2])
visreg(lmMERSb130_30,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D30MERSb1_30

# Plastic 30°C – 80% RH
lmMERSb130_80<-lm(y~x,data=IMERSb130_80)
D30MERSb1_80<--(1/lmMERSb130_80$coefficients[2])
visreg(lmMERSb130_80,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D30MERSb1_80

## Steel b2

# Steel 20°C – 40% RH
lmMERSb220_40<-lm(y~x,data=IMERSb220_40)
D20MERSb2_40<--(1/lmMERSb220_40$coefficients[2])
visreg(lmMERSb220_40,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D20MERSb2_40

# Steel 30°C – 30% RH
lmMERSb230_30<-lm(y~x,data=IMERSb230_30)
D30MERSb2_30<--(1/lmMERSb230_30$coefficients[2])
visreg(lmMERSb230_30,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D30MERSb2_30

# Steel 30°C – 80% RH
lmMERSb230_80<-lm(y~x,data=IMERSb230_80)
D30MERSb2_80<--(1/lmMERSb230_80$coefficients[2])
visreg(lmMERSb230_80,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D30MERSb2_80


########
# SARSc
########

# Chan et al 2011 (carefull time scale not proportional)

# c1 = >95% RH Figure2a
lm28SARSc1<-lm(y~x,data=I28SARSc1)
D28SARSc1<--(1/lm28SARSc1$coefficients[2])
visreg(lm28SARSc1,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D28SARSc1

lm33SARSc1<-lm(y~x,data=I33SARSc1)
D33SARSc1<--(1/lm33SARSc1$coefficients[2])
visreg(lm33SARSc1,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D33SARSc1


lm38SARSc1<-lm(y~x,data=I38SARSc1)
D38SARSc1<--(1/lm38SARSc1$coefficients[2])
visreg(lm38SARSc1,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D38SARSc1

# c2 = 85% RH Figure2b

lm33SARSc2<-lm(y~x,data=I33SARSc2)
D33SARSc2<--(1/lm33SARSc2$coefficients[2])
visreg(lm33SARSc2,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D33SARSc2

lm38SARSc2<-lm(y~x,data=I38SARSc2)
D38SARSc2<--(1/lm38SARSc2$coefficients[2])
visreg(lm38SARSc2,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D38SARSc2


########
# SARSd
########

# Lai et al 2005 (carefull time scale not proportional)

# d1 Several stools and VTM

#VTM
lm20SARSd1VTM<-lm(y~x,data=I20SARSd1VTM)
D20SARSd1VTM<--(1/lm20SARSd1VTM$coefficients[2])
visreg(lm20SARSd1VTM,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D20SARSd1VTM

# d2 Several type of samples and VTM

#VTM

lm20SARSd2VTM<-lm(y~x,data=I20SARSd2VTM)
D20SARSd2VTM<--(1/lm20SARSd2VTM$coefficients[2])
visreg(lm20SARSd2VTM,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D20SARSd2VTM

#NPA
lm20SARSd2NPA<-lm(y~x,data=I20SARSd2NPA)
D20SARSd2NPA<--(1/lm20SARSd2NPA$coefficients[2])
visreg(lm20SARSd2NPA,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D20SARSd2NPA

#TNS
lm20SARSd2TNS<-lm(y~x,data=I20SARSd2TNS)
D20SARSd2TNS<--(1/lm20SARSd2TNS$coefficients[2])
visreg(lm20SARSd2TNS,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D20SARSd2TNS

#NPA 4°C
lm4SARSd2NPA<-lm(y~x,data=I4SARSd2NPA)
D4SARSd2NPA<--(1/lm4SARSd2NPA$coefficients[2])
visreg(lm4SARSd2NPA,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D4SARSd2NPA

###########
## HCoVb
############

## Sizun & Talbot 
## 229E b1

#PBS
# lm21HCoVb1PBS<-lm(y~x,data=I21HCoVb1PBS)
# D21HCoVb1PBS<--(1/lm21HCoVb1PBS$coefficients[2])
# visreg(lm21HCoVb1PBS,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
# D21HCoVb1PBS

#Earle
# lm21HCoVb1Earle<-lm(y~x,data=I21HCoVb1Earle)
# D21HCoVb1Earle<--(1/lm21HCoVb1Earle$coefficients[2])
# visreg(lm21HCoVb1Earle,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
# D21HCoVb1Earle

# #Earle+cells
# #I21HCoVb1Earlec<-digitize("Fig1_HCoVb1b2.JPG")
# #I21HCoVb1Earlec$y<-log10(I21HCoVb1Earlec$y)
# 
# lm21HCoVb1Earlec<-lm(y~x,data=I21HCoVb1Earlec)
# D21HCoVb1Earlec<--(1/lm21HCoVb1Earlec$coefficients[2])
# visreg(lm21HCoVb1Earlec,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
# D21HCoVb1Earlec
# 
# ## OC43E b2
# 
# #PBS
# #I21HCoVb2PBS<-digitize("Fig1_HCoVb1b2.JPG")
# #I21HCoVb2PBS$y<-log10(I21HCoVb2PBS$y)
# 
# lm21HCoVb2PBS<-lm(y~x,data=I21HCoVb2PBS)
# D21HCoVb2PBS<--(1/lm21HCoVb2PBS$coefficients[2])
# visreg(lm21HCoVb2PBS,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
# D21HCoVb2PBS
# 
# #Earle
# #I21HCoVb2Earle<-digitize("Fig1_HCoVb1b2.JPG")
# #I21HCoVb2Earle$y<-log10(I21HCoVb2Earle$y)
# 
# lm21HCoVb2Earle<-lm(y~x,data=I21HCoVb2Earle)
# D21HCoVb2Earle<--(1/lm21HCoVb2Earle$coefficients[2])
# visreg(lm21HCoVb2Earle,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
# D21HCoVb2Earle
# 
# #Earle+cells
# #I21HCoVb2Earlec<-digitize("Fig1_HCoVb1b2.JPG")
# #I21HCoVb2Earlec$y<-log10(I21HCoVb2Earlec$y)
# 
# lm21HCoVb2Earlec<-lm(y~x,data=I21HCoVb2Earlec)
# D21HCoVb2Earlec<--(1/lm21HCoVb2Earlec$coefficients[2])
# visreg(lm21HCoVb2Earlec,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
# D21HCoVb2Earlec
# 
# ## 229E b3 surface
# 
# #Alu
# #I21HCoVb3Alu<-digitize("Fig2_HCoVb3b4.JPG")
# #I21HCoVb3Alu$y<-log10(I21HCoVb1Alu$y)
# 
# lm21HCoVb3Alu<-lm(y~x,data=I21HCoVb1Alu)
# D21HCoVb3Alu<--(1/lm21HCoVb3Alu$coefficients[2])
# visreg(lm21HCoVb3Alu,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
# D21HCoVb3Alu
# 
# #Sponge
# #I21HCoVb3Sponge<-digitize("Fig2_HCoVb3b4.JPG")
# #I21HCoVb3Sponge$y<-log10(I21HCoVb3Sponge$y)
# 
# lm21HCoVb3Sponge<-lm(y~x,data=I21HCoVb3Sponge)
# D21HCoVb3Sponge<--(1/lm21HCoVb3Sponge$coefficients[2])
# visreg(lm21HCoVb3Sponge,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
# D21HCoVb3Sponge
# 
# #Latex Gloves
# #I21HCoVb3Latex<-digitize("Fig2_HCoVb3b4.JPG")
# #I21HCoVb3Latex$y<-log10(I21HCoVb3Latex$y)
# 
# lm21HCoVb3Latex<-lm(y~x,data=I21HCoVb3Latex)
# D21HCoVb3Latex<--(1/lm21HCoVb3Latex$coefficients[2])
# visreg(lm21HCoVb3Latex,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
# D21HCoVb3Latex
# 
# ## OC43E b4
# 
# #Alu
# #I21HCoVb4Alu<-digitize("Fig2_HCoVb3b4.JPG")
# #I21HCoVb4Alu$y<-log10(I21HCoVb4Alu$y)
# 
# lm21HCoVb4Alu<-lm(y~x,data=I21HCoVb4Alu)
# D21HCoVb4Alu<--(1/lm21HCoVb4Alu$coefficients[2])
# visreg(lm21HCoVb4Alu,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
# D21HCoVb4Alu
# 
# #Sponge (not possible to rapide decline)
# 
# 
# # Latex gloves (not possible to rapid decline)

##########
## MHVc
##########

## Saknimit et al 1988 

# Strain MHV2 

#40°C pas possible

#60°C
lm60MHV2c1<-lm(y~x,data=I60MHV2c1)
D60MHV2c1<--(1/lm60MHV2c1$coefficients[2])
visreg(lm60MHV2c1,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D60MHV2c1


# Strain MHVN 

#40°C pas possible

#60°C
lm60MHVNc2<-lm(y~x,data=I60MHVNc2)
D60MHVNc2<--(1/lm60MHVNc2$coefficients[2])
visreg(lm60MHVNc2,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D60MHVNc2

##########
## CCV
##########

## Saknimit et al 1988 

#60°C
lm60CCV<-lm(y~x,data=I60CCV)
D60CCV<--(1/lm60CCV$coefficients[2])
visreg(lm60CCV,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D60CCV


#########
# SARS-CoV2b
#########

# Van doremalen et al 2020

#Steel
lm22SARSCoV2b_steel<-lm(y~x,data=I22SARSCoV2b_steel)
D22SARSCoV2b_steel<--(1/lm22SARSCoV2b_steel$coefficients[2])
visreg(lm22SARSCoV2b_steel,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D22SARSCoV2b_steel

#Plastic
lm22SARSCoV2b_plastic<-lm(y~x,data=I22SARSCoV2b_plastic)
D22SARSCoV2b_plastic<--(1/lm22SARSCoV2b_plastic$coefficients[2])
visreg(lm22SARSCoV2b_plastic,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D22SARSCoV2b_plastic

#########
# SARS-CoV2c (Batejat et al 2020)
#########

# c1 : cell culture supernatant
lm56SARSCoV2c1<-lm(y~x,data=I56SARSCoV2c1)
D56SARSCoV2c1<--(1/lm56SARSCoV2c1$coefficients[2])
visreg(lm56SARSCoV2c1,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D56SARSCoV2c1

# c2 : Nasopharyngeal samples
lm65SARSCoV2c2<-lm(y~x,data=I65SARSCoV2c2)
D65SARSCoV2c2<--(1/lm65SARSCoV2c2$coefficients[2])
visreg(lm65SARSCoV2c2,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D65SARSCoV2c2

# c3 : Sera
lm56SARSCoV2c3<-lm(y~x,data=I56SARSCoV2c3)
D56SARSCoV2c3<--(1/lm56SARSCoV2c3$coefficients[2])
visreg(lm56SARSCoV2c3,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D56SARSCoV2c3



#########
# SARS-CoVe
#########

# Van doremalen et al 2020

#Steel
lm22SARSCoVe_steel<-lm(y~x,data=I22SARSCoVe_steel)
D22SARSCoVe_steel<--(1/lm22SARSCoVe_steel$coefficients[2])
visreg(lm22SARSCoVe_steel,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D22SARSCoVe_steel

#Plastic
lm22SARSCoVe_plastic<-lm(y~x,data=I22SARSCoVe_plastic)
D22SARSCoVe_plastic<--(1/lm22SARSCoVe_plastic$coefficients[2])
visreg(lm22SARSCoVe_plastic,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D22SARSCoVe_plastic

#########
# HCOvc
#########

# Warnes et a 2015

#Steel
lm21HCOV_steel<-lm(y~x,data=I21HCOV_steel)
D21HCOV_steel<--(1/lm21HCOV_steel$coefficients[2])
visreg(lm21HCOV_steel,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D21HCOV_steel

#PVC
lm21HCOV_PVC<-lm(y~x,data=I21HCOV_PVC)
D21HCOV_PVC<--(1/lm21HCOV_PVC$coefficients[2])
visreg(lm21HCOV_PVC,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D21HCOV_PVC

#Rubber
lm21HCOV_Rubber<-lm(y~x,data=I21HCOV_Rubber)
D21HCOV_Rubber<--(1/lm21HCOV_Rubber$coefficients[2])
visreg(lm21HCOV_Rubber,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D21HCOV_Rubber

#Glass
lm21HCOV_Glass<-lm(y~x,data=I21HCOV_Glass)
D21HCOV_Glass<--(1/lm21HCOV_Glass$coefficients[2])
visreg(lm21HCOV_Glass,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D21HCOV_Glass

#Ceramic
lm21HCOV_Ceramic<-lm(y~x,data=I21HCOV_Ceramic)
D21HCOV_Ceramic<--(1/lm21HCOV_Ceramic$coefficients[2])
visreg(lm21HCOV_Ceramic,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D21HCOV_Ceramic

#Treflon
lm21HCOV_Teflon<-lm(y~x,data=I21HCOV_Teflon)
D21HCOV_Teflon<--(1/lm21HCOV_Teflon$coefficients[2])
visreg(lm21HCOV_Teflon,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D21HCOV_Teflon


###########
## HCoVd
###########

# 229E Rabeneau (Figure 2c d) suspension milieu RT

# without FCS
lm23HCoVd1<-lm(y~x,data=I23HCoVd1)
D23HCoVd1<--(1/lm23HCoVd1$coefficients[2])
visreg(lm23HCoVd1,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D23HCoVd1


# with FCS
lm23HCoVd2<-lm(y~x,data=I23HCoVd2)
D23HCoVd2<--(1/lm23HCoVd2$coefficients[2])
visreg(lm23HCoVd2,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D23HCoVd2


###########
## FIPV (Christianson et al. 1989)
###########
lm54FIPV<-lm(y~x,data=I54FIPV)
D54FIPV<--(1/lm54FIPV$coefficients[2])
visreg(lm54FIPV,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D54FIPV


###########
## SARSf (Pagat et al 2007)
###########

# 58°C
lm58SARSf<-lm(y~x,data=I58SARSCoVf)
D58SARSf<--(1/lm58SARSf$coefficients[2])
visreg(lm58SARSf,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D58SARSf

# 68°C
lm68SARSf<-lm(y~x,data=I68SARSCoVf)
D68SARSf<--(1/lm68SARSf$coefficients[2])
visreg(lm68SARSf,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D68SARSf

# 22°C 17% RH
lm22SARSf_17<-lm(y~x,data=I22SARSCoVf_17)
D22SARSf_17<--(1/lm22SARSf_17$coefficients[2])
visreg(lm22SARSf_17,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D22SARSf_17


###########
## FIPV b (Gundy et al, 2008)
###########
lm23FIPVb<-lm(y~x,data=I23FIPVb)
D23FIPVb<--(1/lm23FIPVb$coefficients[2])
visreg(lm23FIPVb,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D23FIPVb

###########
## HCoVe(Gundy et al, 2008)
###########
lm23HCoVe<-lm(y~x,data=I23HCoVe)
D23HCoVe<--(1/lm23HCoVe$coefficients[2])
visreg(lm23HCoVe,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D23HCoVe



##########
## MHVd (Ye et al. )
##########

# 10°C Wastewater : removed because adsorption to solid
# lm10MHVd1<-lm(y~x,data=I10MHVd1)
# D10MHVd1<--(1/lm10MHVd1$coefficients[2])
# visreg(lm10MHVd1,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
# D10MHVd1

# 10°C Pasteurized wastewater (not possible: not enough decline!)

# 25°C Wastewater : removed because adsorption to solid
# lm25MHVd1<-lm(y~x,data=I25MHVd1)
# D25MHVd1<--(1/lm25MHVd1$coefficients[2])
# visreg(lm25MHVd1,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
# D25MHVd1

# 25°C Pasteurized wastewater
lm25MHVd2<-lm(y~x,data=I25MHVd2)
D25MHVd2<--(1/lm25MHVd2$coefficients[2])
visreg(lm25MHVd2,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D25MHVd2


##########
## HCOVf (Lamarre & Talbot 1989) strain 229E
##########

#4°C : no significant decline 

#22°C 

lm22HCoVf<-lm(y~x,data=I22HCoVf)
D22HCoVf<--(1/lm22HCoVf$coefficients[2])
visreg(lm22HCoVf,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D22HCoVf

#33°C 
lm33HCoVf<-lm(y~x,data=I33HCoVf)
D33HCoVf<--(1/lm33HCoVf$coefficients[2])
visreg(lm33HCoVf,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D33HCoVf

#37°C 
lm37HCoVf<-lm(y~x,data=I37HCoVf)
D37HCoVf<--(1/lm37HCoVf$coefficients[2])
visreg(lm37HCoVf,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D37HCoVf

##########
## PEDV a (Hoffman and Wyler 1989)
##########

#50°C
lm50PEDVa<-lm(y~x,data=I50PEDVa)
D50PEDVa<--(1/lm50PEDVa$coefficients[2])
visreg(lm50PEDVa,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D50PEDVa

##########
## PEDV b (Qvist-Rybachuck et al. 2016)
##########

#40°C
lm40PEDVb<-lm(y~x,data=I40PEDVb)
D40PEDVb<--(1/lm40PEDVb$coefficients[2])
visreg(lm40PEDVb,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D40PEDVb

#44°C
lm44PEDVb<-lm(y~x,data=I44PEDVb)
D44PEDVb<--(1/lm44PEDVb$coefficients[2])
visreg(lm44PEDVb,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D44PEDVb

#48°C
lm48PEDVb<-lm(y~x,data=I48PEDVb)
D48PEDVb<--(1/lm48PEDVb$coefficients[2])
visreg(lm48PEDVb,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D48PEDVb

##########
## PEDV c (Qvist-Rybachuck et al. 2016)
##########

# 4°C not enough inactivation
# 44°C not enough inactivation

#48°C
#48°C
lm48PEDVc<-lm(y~x,data=I48PEDVc)
D48PEDVc<--(1/lm48PEDVc$coefficients[2])
visreg(lm48PEDVc,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D48PEDVc

##########
## SARS g (Kariwa et 2006)
##########

#56°C
lm56SARSCoVg<-lm(y~x,data=I56SARSCoVg)
D56SARSCoVg<--(1/lm56SARSCoVg$coefficients[2])
visreg(lm56SARSCoVg,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D56SARSCoVg


##########
## BCoV (Mullis et al. 2012)
##########

# a salad 4°C
lm4BCoVa<-lm(y~x,data=I4BCoVa)
D4BCoVa<--(1/lm4BCoVa$coefficients[2])
visreg(lm4BCoVa,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D4BCoVa

# b medium 4°C
lm4BCoVb<-lm(y~x,data=I4BCoVb)
D4BCoVb<--(1/lm4BCoVb$coefficients[2])
visreg(lm4BCoVb,"x",points=list(cex=1.0),xlab=c("temps (h)"),ylab=c("log10(I)"))
D4BCoVb

###### Synthesis. Used to prepare data_Dvalues.csv

virus<-c("MERS","MERS","SARSb","SARSb","SARSa","SARSa","SARSa","SARSa","TGEVa1","TGEVa1","TGEVa1","TGEVa1","TGEVa1","TGEVa1","TGEVa1","TGEVa2","TGEVa2","TGEVa2","TGEVa2","TGEVa2","TGEVb1","TGEVb1","TGEVb2","TGEVb2","TGEVb2","TGEVb3","TGEVb3","TGEVb3","MHVb1","MHVb1","MHVb2","MHVb2","MHVb2","MHVb3","MHVb3","MHVb3","SARSCoV2","SARSCoV2","SARSCoV2","SARSCoV2","SARSCoV2","SARSCoV2","TGEVc1","TGEVc2","MHVa1","MHVa2","HCoVa1","HCoVa1","HCoVa2","HCoVa2","MERSb1","MERSb1","MERSb1","MERSb2","MERSb2","MERSb2","SARSc1","SARSc1","SARSc1","SARSc2","SARSc2","SARSd1","SARSd2","SARSd2","SARSd2","SARSd2","MHVc1","MHVc2","CCV","SARSCoV2b","SARSCoV2b","SARSCoV2c","SARSCoV2c","SARSCoV2c","SARSe","SARSe","HCoVc","HCoVc","HCoVc","HCoVc","HCoVc","HCoVc","HCoVd","HCoVd","FIPV","SARSf","SARSf","SARSf","FIPVb","HCoVe","MHVd","HCoVf","HCoVf","HCoVf","PEDVa","PEDVb","PEDVb","PEDVb","PEDVc","SARSg","BCoV","BCoV")
virus2<-c("MERS","MERS","SARS","SARS","SARS","SARS","SARS","SARS","TGEV","TGEV","TGEV","TGEV","TGEV","TGEV","TGEV","TGEV","TGEV","TGEV","TGEV","TGEV","TGEV","TGEV","TGEV","TGEV","TGEV","TGEV","TGEV","TGEV","MHV","MHV","MHV","MHV","MHV","MHV","MHV","MHV","SARSCoV2","SARSCoV2","SARSCoV2","SARSCoV2","SARSCoV2","SARSCoV2","TGEV","TGEV","MHV","MHV","HCoV","HCoV","HCoV","HCoV","MERS","MERS","MERS","MERS","MERS","MERS","SARS","SARS","SARS","SARS","SARS","SARS","SARS","SARS","SARS","SARS","MHV","MHV","CCV","SARSCoV2","SARSCoV2","SARSCoV2","SARSCoV2","SARSCoV2","SARS","SARS","HCoV","HCoV","HCoV","HCoV","HCoV","HCoV","HCoV","HCoV","FIPV","SARS","SARS","SARS","FIPV","HCoV","MHV","HCoV","HCoV","HCoV","PEDV","PEDV","PEDV","PEDV","PEDV","SARS","BCoV","BCoV")
Temperature<-c(56,65,56,65,56,56,23,23,31,35,39,43,47,51,55,35,39,43,47,51,20,40,4,20,40,4,20,40,20,40,4,20,40,4,20,40,4,22,37,56,22,22,25,25,25,25,33,37,33,37,20,30,30,20,30,30,28,33,38,33,38,20,20,20,20,4,60,60,60,22,22,56,65,56,22,22,21,21,21,21,21,21,23,23,54,58,68,22,23,23,25,22,33,37,50,40,44,48,48,56,4,4)
#RH<-c(,,,,,,,,,,,,,,,,,,,,,,20,20,50,50,50,80,80,80,20,20,50,50,50,80,80,80,,,,,,40,30,80,40,30,80,95,95,95,85,85,,,,,,,,,,,,,,,,,40,40,40,40,35,35,35,35,35,35)
Dvalues<-c(D56MERS,D65MERS,D56SRAS,D65SRAS,D56SRASraba1,D56SRASraba2,D23SRARSa3,D23SRARSa4,D31TGEVa1,D35TGEVa1,D39TGEVa1,D43TGEVa1,D47TGEVa1,D51TGEVa1,D55TGEVa1,D35TGEVa2,D39TGEVa2,D43TGEVa2,D47TGEVa2,D51TGEVa2,D20TGEVb1,D40TGEVb1,D4TGEVb2,D20TGEVb2,D40TGEVb2,D4TGEVb3,D20TGEVb3,D40TGEVb3,D20MHV1,D40MHV1,D4MHV2,D20MHV2,D40MHV2,D4MHV3,D20MHV3,D40MHV3,D4SARSCoV2,D22SARSCoV2,D37SARSCoV2,D56SARSCoV2,D22SARSCoV2a2_65s,D22SARSCoV2a2_65p,D25TGEVc1,D25TGEVc2,D25MHVa1,D25MHVa2,D33HCoVa1,D37HCoVa1,D33HCoVa2,D37HCoVa2,D20MERSb1_40,D30MERSb1_30,D30MERSb1_80,D20MERSb2_40,D30MERSb2_30,D30MERSb2_80,D28SARSc1,D33SARSc1,D38SARSc1,D33SARSc2,D38SARSc2,D20SARSd1VTM,D20SARSd2VTM,D20SARSd2NPA,D20SARSd2TNS,D4SARSd2NPA,D60MHV2c1,D60MHVNc2,D60CCV,D22SARSCoV2b_steel,D22SARSCoV2b_plastic,D56SARSCoV2c1,D65SARSCoV2c2,D56SARSCoV2c3,D22SARSCoVe_steel,D22SARSCoVe_plastic,D21HCOV_Ceramic,D21HCOV_Glass,D21HCOV_PVC,D21HCOV_Rubber,D21HCOV_steel,D21HCOV_Teflon,D23HCoVd1,D23HCoVd2,D54FIPV,D58SARSf,D68SARSf,D22SARSf_17,D23FIPVb,D23HCoVe,D25MHVd2,D22HCoVf,D33HCoVf,D37HCoVf,D50PEDVa,D40PEDVb,D44PEDVb,D48PEDVb,D48PEDVc,D56SARSCoVg,D4BCoVa,D4BCoVb)
logDvalues<-log10(Dvalues)
data_global<-data.frame(virus=virus,genre=virus2,Temperature=Temperature,logDvalues=logDvalues)
#plot(Temperature,logDvalues)

sp<-ggplot(data_global, aes(x=Temperature, y=logDvalues, color=genre)) + geom_point(size = 3)

pdf(file='Output/Summary_Dvalues.pdf')
sp
dev.off()

#write.csv(data_global,"global.csv")

