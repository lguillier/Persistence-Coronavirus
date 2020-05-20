# This script was used to gather kinetics points provided in Tables & Figures selected in 
# relevant studies for modelling the inactivation of coronariviruses in fomites
# For figures, the images provided in /Data/figures have been used. Some examples of the digitization are shown in Output/digitize
# For Tables, the gathered values were simply retranscripted
# While running the script, users will have to digitize manually the figures.
# As it's user choice to graphically select calibrations points and selected points from the kinetics, the collected Ixxxx might differ


## Used libraries and fonctions
library(digitize)


## Analysis for each study. A key helps to make the link between this script and the study (see. Appendix 1 of Guillier et al. BiorXiv paper)

#########
## TGEVa (Laude, 1981)
########

## TGEVa1

#Fig1a.JPG for TGEV at pH 7 

# 31°C
I31TGEV_log<-digitize("Data/figures/Fig1_TGEV.JPG")

# 35°C
I35TGEV_log<-digitize("Data/figures/Fig1_TGEV.JPG")

# 39°C
I39TGEV_log<-digitize("Data/figures/Fig1_TGEV.JPG")

# 43°C
I43TGEV_log<-digitize("Data/figures/Fig1_TGEV.JPG")

# 47°C
I47TGEV_log<-digitize("Data/figures/Fig1_TGEV.JPG")

# 51°C
I51TGEV_log<-digitize("Data/figures/Fig1_TGEV.JPG")

# 55°C
I55TGEV_log<-digitize("Data/figures/Fig1_TGEV.JPG")


## TGEVa2

#Fig1b.JPG for TGEV at pH 8 

# 35°C
I35TGEVa2<-digitize("Data/figures/Fig1_TGEVa1a2.JPG")

# 39°C
I39TGEVa2<-digitize("Data/figures/Fig1_TGEVa1a2.JPG")

# 43°C
I43TGEVa2<-digitize("Data/figures/Fig1_TGEVa1a2.JPG")

# Zoom on the figure for better resolution for 47 and 51°C
# 47°C
I47TGEVa2<-digitize("Data/figures/Fig1_TGEVa1a2zoom.JPG")

# 51°C
I51TGEVa2<-digitize("Data/figures/Fig1_TGEVa1a2zoom.JPG")

#########
## TGEVb (Casanova et 2010 AEM)
########

## TGEV Casanova et 2010 AEM

#########
## TGEVb1 20% RH
########

#20°C
I20TGEVb1<-digitize("Data/figures/Fig2_TGEVb1.JPG")
I20TGEVb1$x<-I20TGEVb1$x*24

#40°C
I40TGEVb1<-digitize("Data/figures/Fig3_TGEVb1.JPG")

#########
## TGEVb2 50% RH
########

# 4°C
I4TGEVb2<-digitize("Data/figures/Fig1_TGEVb2.JPG")
I4TGEVb2$x<-I4TGEVb2$x*24

#20°C
I20TGEVb2<-digitize("Data/figures/Fig2_TGEVb2.JPG")
I20TGEVb2$x<-I20TGEVb2$x*24

#40°C
I40TGEVb2<-digitize("Data/figures/Fig3_TGEVb2.JPG")

#########
## TGEVb3 80% RH
########

# 4°C
I4TGEV2<-digitize("Data/figures/Fig1_TGEVb3.JPG")
I4TGEV2$x<-I4TGEV2$x*24
#20°C
I20TGEV2<-digitize("Data/figures/Fig2_TGEVb3.JPG")
I20TGEV2$x<-I20TGEV2$x*24

# 40°C
I40TGEV2_log<-digitize("Data/figures/Fig3_TGEVb3.JPG")



#########
## TGEVc (Casanova et al. 2009)
########

# 25°C

I25TGEVc1<-digitize("Data/figures/Fig1_TGEVc1.JPG")
I25TGEVc1$x<-I25TGEVc1*24

I25TGEVc2<-digitize("Data/figures/Fig2_TGEVc2.JPG")
I25TGEVc2$x<-I25TGEVc2$c*24




#########
## SARSa (Rabeneau et al. 2005)
########

# SRAS Rabeneau (Table 1) Medium

#a1 without FCS
I56SARSa1<-c()
I56SARSa1$x<-c(0,0.5)
I56SARSa1$y<-c(7.18,1.8)

#a2 with FCS
I56SARSa2<-c()
I56SARSa2$x<-c(0,0.5)
I56SARSa2$y<-c(7.18,4.55)


# SRAS Rabeneau (Figure 2a b) surface  (Unknown RH, not considered)

# SRAS Rabeneau (Figure 2c d) suspension RT medium

# without FCS
I23SRARSa3<-digitize("Data/figures/Fig2cd_SARSa3a4.JPG")
I23SRARSa3$x<-c(0,24,48,72,6*24,9*24) # Correction of time

# with FCS
I23SRARSa4<-digitize("Data/figures/Fig2cd_SARSa3a4.JPG")
I23SRARSa4$x<-c(0,24,48,72,6*24,9*24) # Correction of time



#########
## SARSb (Darnell et al, 2004)
########

#56°C
I56SRAS_log<-digitize("Data/figures/Fig2_SRAS.JPG")

#65°C
I65SRAS_log<-digitize("Data/figures/Fig2_SRAS.JPG")


########
# SARSc (Chan et al 2011)
########

## (carefull time scale not proportional)

# c1 = >95% RH Figure2a
#28°C
I28SARSc1<-digitize("Data/figures/Fig2a_SARSc1.JPG")
I28SARSc1$x<-c(3,7,11,13,24)
I28SARSc1$y<--I28SARSc1$y

#33°C
I33SARSc1<-digitize("Data/figures/Fig2a_SARSc1.JPG")
I33SARSc1$x<-c(0,3,7,11,13,24)
I33SARSc1$y<--I33SARSc1$y
#38°C
I38SARSc1<-digitize("Data/figures/Fig2a_SARSc1.JPG")
I38SARSc1$x<-c(0,3,7,11,13,24)
I38SARSc1$y<--I38SARSc1$y


# c2 = 85% RH Figure2b
#28°C
#I28SARSc2<-digitize("Data/figures/Fig2b_SARSc2.JPG")
#No inactivation

#33°C
I33SARSc2<-digitize("Data/figures/Fig2b_SARSc2.JPG")
I33SARSc2$x<-c(0,3,7,11,13,24)
I33SARSc2$y<--I33SARSc2$y

# 38°C
I38SARSc2<-digitize("Data/figures/Fig2b_SARSc2.JPG")
I38SARSc2$x<-c(0,3,7,11,13,24)
I38SARSc2$y<--I38SARSc2$y


########
# SARSd (Lai et al 2005) : Fecal samples were not considered
########

#  (carefull time scale not proportional)

# d1 Several stools and VTM

#VTM
I20SARSd1VTM<-digitize("Data/figures/Fig2_SARSd1.JPG")
I20SARSd1VTM$x<-c(0,0.5,1,3,6,24,48,96,120,144,168)

#adult1 (red pH7-8)
#I20SARSd1adult1<-digitize("Data/figures/Fig1_SARSd1.JPG")
#I20SARSd1adult1$x<-c(0,0.5,1,3)

#adult2 (yellow pH8)
#I20SARSd1adult2<-digitize("Data/figures/Fig1_SARSd1.JPG")
#I20SARSd1adult2$x<-c(0,0.5,1,3,6)

#adult3 (light blue pH9)
#I20SARSd1adult3<-digitize("Data/figures/Fig1_SARSd1.JPG")
#I20SARSd1adult3$x<-c(0,0.5,1,3,6,24,48,96)

#baby (red pH6-7)
#I20SARSd1baby<-digitize("Data/figures/Fig1_SARSd1.JPG")
#I20SARSd1baby$x<-c(0,0.5,1,3)

# d2 Several type of samples and VTM

#VTM
I20SARSd2VTM<-digitize("Data/figures/Fig1_SARSd2.JPG")
I20SARSd2VTM$x<-c(0,3,6,24,72,96,120,168)

#NPA
I20SARSd2NPA<-digitize("Data/figures/Fig1_SARSd2.JPG")
I20SARSd2NPA$x<-c(0,3,6,24,72,96,120,168)

#TNS
I20SARSd2TNS<-digitize("Data/figures/Fig1_SARSd2.JPG")
I20SARSd2TNS$x<-c(0,3,6,24,72,96,120)

#NPA 4°C
I4SARSd2NPA<-digitize("Data/figures/Fig1_SARSd2.JPG")
I4SARSd2NPA$x<-c(0,3,6,24,72,96,120,168,240,11*24,12*24,14*24,18*24,19*24,20*24,21*24,24*24,27*24)

#########
# SARS-CoVe (Van doremalen et al 2020)
#########

# Steel
I22SARSCoVe_steel<-digitize("Data/figures/Fig1B_SARSe.JPG")

#Plastic
I22SARSCoVe_plastic<-digitize("Data/figures/Fig1B_SARSe.JPG")


#########
# SARS-CoVf (Pagat et el 2005)
#########

# 58°C
I58SARSCoVf<-digitize("Data/figures/Fig1_SARSf.JPG")

#68°C
I68SARSCoVf<-digitize("Data/figures/Fig1_SARSf.JPG")

#22°C 17% RH on glass
I22SARSCoVf_17<-digitize("Data/figures/Fig3b_SARSf.JPG")

#########
# SARS-CoVg (Kariwa et el 2006)
#########

# 56°C
I56SARSCoVg<-digitize("Data/figures/Fig1_SRASg.JPG")


#########
## MERSa Leclercq et al. (2005)
########

#56°C 

I56MERS_log<-c()
I56MERS_log$x<-c(0,0.5/60,0.5/60,0.5/60,15/60,15/60,30/60,30/60)
I56MERS_log$y<-c(5.59,5.5,6.17,4.67,0.67,1,0.67,1.33)

#65°C 
I65MERS_log<-c()
I65MERS_log$x<-c(0,0.5/60,0.5/60,0.5/60)
I65MERS_log$y<-c(5.59,4.67,2,3.67)


#########
## MERSb (van Doremalen et al 2013 Eurosurveilance)
########

## Plastic b1

# Plastic 20°C – 40% RH
IMERSb120_40<-digitize("Data/figures/Fig1a_MERSb1.JPG")

# Plastic 30°C – 30% RH
IMERSb130_30<-digitize("Data/figures/Fig1a_MERSb1.JPG")

# Plastic 30°C – 80% RH
IMERSb130_80<-digitize("Data/figures/Fig1a_MERSb1.JPG")

## Steel b2
# Steel 20°C – 40% RH
IMERSb220_40<-digitize("Data/figures/Fig1b_MERSb2.JPG")

# Steel 30°C – 30% RH
IMERSb230_30<-digitize("Data/figures/Fig1b_MERSb2.JPG")

# Steel 30°C – 80% RH
IMERSb230_80<-digitize("Data/figures/Fig1b_MERSb2.JPG")


#########
## SARSCoV2a1 (Chin et al. 2020)
########

## SARS-CoV2 (Table A)
I4SARSCoV2<-c()
I4SARSCoV2$x<-c(0,0.5,1,3,6,12,24,48,96,7*24,14*24)
I4SARSCoV2$y<-c(6.8,6.51,6.57,6.66,6.67,6.58,6.72,6.42,6.32,6.65,6.04)

I22SARSCoV2<-c()
I22SARSCoV2$x<-c(0,1/60,5/60,10/60,0.5,1,3,6,12,24,48,96,7*24)
I22SARSCoV2$y<-c(6.8,6.51,6.7,6.63,6.52,6.33,6.68,6.54,6.23,6.26,5.83,4.99,3.48)
I22SARSCoV2<-as.data.frame(I22SARSCoV2)

I37SARSCoV2<-c()
I37SARSCoV2$x<-c(0,0.5,1,3,6,12,24)
I37SARSCoV2$y<-c(6.8,6.57,6.76,6.36,5.99,5.28,3.23)

I56SARSCoV2<-c()
I56SARSCoV2$x<-c(0,1/60,5/60,10/60)
I56SARSCoV2$y<-c(6.8,6.65,4.62,3.84)

#########
## SARSCoV2a2 (Chin et al. 2020)
########

## SARS-CoV2 (Table B)

#Plastic 
I22SARSCoV2a2_65p<-c()
I22SARSCoV2a2_65p$x<-c(0,0.5,3,6,24,48,96)
I22SARSCoV2a2_65p$y<-c(5.81,5.83,5.33,4.68,3.89,2.76,2.27)

#Stainless steel
I22SARSCoV2a2_65s<-c()
I22SARSCoV2a2_65s$x<-c(0,0.5,3,6,24,48,96)
I22SARSCoV2a2_65s$y<-c(5.80,5.23,5.09,5.24,4.85,4.44,3.26)

#########
# SARS-CoV2b (Van doremalen et al 2020)
#########

#Steel
I22SARSCoV2b_steel<-digitize("Data/figures/Fig1B_SARSCoV2.JPG")

#Plastic
I22SARSCoV2b_plastic<-digitize("Data/figures/Fig1B_SARSCoV2.JPG")




#########
# SARS-CoV2c (Batejat et al 2020)
#########

# c1 : cell culture supernatant

I56SARSCoV2c1<-c()
I56SARSCoV2c1$x<-c(0,5/60)
I56SARSCoV2c1$y<-c(6.6,3.23)

# c2 : Nasopharyngeal samples

I65SARSCoV2c2<-c()
I65SARSCoV2c2$x<-c(0,5/60)
I65SARSCoV2c2$y<-c(6.57,4.83)

# c3 : Sera

I56SARSCoV2c3<-c()
I56SARSCoV2c3$x<-c(0,5/60,10/60)
I56SARSCoV2c3$y<-c(6.2,4.87,2.57)

#########
## MHVa (Casanova et al. 2009)
########

## MHV  a1 et a2

#Reagent-grade water a1
I25MHVa1<-digitize("Data/figures/Fig1_TGEVc1.JPG")
I25MHVa1$x<-I25MHVa1$x*24

#Lake water a2
I25MHVa2<-digitize("Data/figures/Fig2_TGEVc2.JPG")
I25MHVa2$x<-I25MHVa2$x*24


#########
## MHVb (Casanova et 2010 AEM)
########

#########
## MHV1 20% RH
########
#20°C
I20MHV1<-digitize("Data/figures/Fig2_TGEVb1.JPG")
I20MHV1$x<-I20MHV1$x*24

#40°C
I40MHV1<-digitize("Data/figures/Fig3_TGEVb1.JPG")

#########
## MHV2 50% RH
########

# 4°C
I4MHV2<-digitize("Data/figures/Fig1_TGEVb2.JPG")
I4MHV2$x<-I4MHV2$x*24

#20°C
I20MHV2<-digitize("Data/figures/Fig2_TGEVb2.JPG")
I20MHV2$x<-I20MHV2$x*24

#40°C
I40MHV2<-digitize("Data/figures/Fig3_TGEVb2.JPG")

#########
## MHV3 80% RH
########

#4°C
I4MHV3<-digitize("Data/figures/Fig1_TGEVb3.JPG")
I4MHV3$x<-I4MHV3$x*24

#20°C
I20MHV3<-digitize("Data/figures/Fig2_TGEVb3.JPG")
I20MHV3$x<-I20MHV3$x*24

#40°C
I40MHV3<-digitize("Data/figures/Fig3_TGEVb3.JPG")

##########
## MHVc (Saknimit et al 1988)
##########

## Strain MHV2 

#40°C not enough decline
#I40MHV2c1$x<-c(0,1,5,15,30)/60
#I40MHV2c1$y<-c(0,-0.16,-0.33,-.43,-0.26)

#60°C
I60MHV2c1<-c()
I60MHV2c1$x<-c(0,1,5)/60
I60MHV2c1$y<-c(0,-2.6,-3.55)

# Strain MHVN 

#40°C no decline


#60°C
I60MHVNc2<-c()
I60MHVNc2$x<-c(0,1)/60
I60MHVNc2$y<-c(0,-2.87)

##########
## MHVd (Ye et al. )
##########
# 10°C Wastewater : removed because adsorption to solid
#I10MHVd1<-digitize("Data/figures/Fig1_MHVd.JPG")

# 10°C Pasteurized wastewater (not possible: not enough decline!)
#I10MHVd2<-digitize("Data/figures/Fig1_MHVd.JPG")

# 25°C Wastewater : removed because adsorption to solid
#I25MHVd1<-digitize("Data/figures/Fig1_MHVd.JPG")


# 25°C Pasteurized wastewater
I25MHVd2<-digitize("Data/figures/Fig1_MHVd.JPG")


#########
## HCoVa (Bucknall et al)
########

# 229E (a1)

#33°C
I33HCoVa1<-digitize("Data/figures/Fig1a_HCoV33.JPG")

#37°C
I37HCoVa1<-digitize("Data/figures/Fig1b_HCoV37.JPG")

## OC43 (a2)

# 33°C
I33HCoVa2<-digitize("Data/figures/Fig1a_HCoV33.JPG")

# 37°C
I37HCoVa2<-digitize("Data/figures/Fig1b_HCoV37.JPG")


###########
## HCoVb (Sizun & Talbot) - Not kept (not enough inactivation to estimate D)
############

## 229E b1

#PBS
#I21HCoVb1PBS<-digitize("Data/figures/Fig1_HCoVb1b2.JPG")
#I21HCoVb1PBS$y<-log10(I21HCoVb1PBS$y)

#Earle
#I21HCoVb1Earle<-digitize("Data/figures/Fig1_HCoVb1b2.JPG")
#I21HCoVb1Earle$y<-log10(I21HCoVb1Earle$y)

#Earle+cells
#I21HCoVb1Earlec<-digitize("Data/figures/Fig1_HCoVb1b2.JPG")
#I21HCoVb1Earlec$y<-log10(I21HCoVb1Earlec$y)

## OC43E b2

#PBS
#I21HCoVb2PBS<-digitize("Data/figures/Fig1_HCoVb1b2.JPG")
#I21HCoVb2PBS$y<-log10(I21HCoVb2PBS$y)

#Earle
#I21HCoVb2Earle<-digitize("Data/figures/Fig1_HCoVb1b2.JPG")
#I21HCoVb2Earle$y<-log10(I21HCoVb2Earle$y)

#Earle+cells
#I21HCoVb2Earlec<-digitize("Data/figures/Fig1_HCoVb1b2.JPG")
#I21HCoVb2Earlec$y<-log10(I21HCoVb2Earlec$y)

## 229E b3 surface

#Alu
#I21HCoVb3Alu<-digitize("Data/figures/Fig2_HCoVb3b4.JPG")
#I21HCoVb3Alu$y<-log10(I21HCoVb1Alu$y)

#Sponge
#I21HCoVb3Sponge<-digitize("Data/figures/Fig2_HCoVb3b4.JPG")
#I21HCoVb3Sponge$y<-log10(I21HCoVb3Sponge$y)

#Latex Gloves
#I21HCoVb3Latex<-digitize("Data/figures/Fig2_HCoVb3b4.JPG")
#I21HCoVb3Latex$y<-log10(I21HCoVb3Latex$y)

## OC43E b4

#Alu
#I21HCoVb4Alu<-digitize("Data/figures/Fig2_HCoVb3b4.JPG")
#I21HCoVb4Alu$y<-log10(I21HCoVb4Alu$y)

#Sponge (not possible to rapide decline)

# Latex gloves (not possible to rapid decline)

#########
# HCOvc (Warnes et a 2015)
#########

#Steel
I21HCOV_steel<-digitize("Data/figures/Fig1_HCoVc.JPG")

#PVC
I21HCOV_PVC<-digitize("Data/figures/Fig1_HCoVc.JPG")

#Rubber
I21HCOV_Rubber<-digitize("Data/figures/Fig1_HCoVc.JPG")

#Glass
I21HCOV_Glass<-digitize("Data/figures/Fig1_HCoVc.JPG")

#Ceramic
I21HCOV_Ceramic<-digitize("Data/figures/Fig1_HCoVc.JPG")

#Treflon
I21HCOV_Teflon<-digitize("Data/figures/Fig1_HCoVc.JPG")


###########
## HCoVd (Rabeneau et al 2005)
###########

# 229E  (Figure 2c d) suspension  RT medium

# without FCS
I23HCoVd1<-digitize("Data/figures/Fig2cd_SARSa3a4.JPG")
I23HCoVd1$x<-c(0,24,48,72,6*24,9*24)

# with FCS
I23HCoVd2<-digitize("Data/figures/Fig2cd_SARSa3a4.JPG")
I23HCoVd2$x<-c(0,24,48,72,6*24,9*24)

##########
## HCOVe (Gundy et al. 2008) strain 229E
##########

#23°C 
I23HCoVe<-digitize("Data/figures/Fig1_FIPVb.JPG")

##########
## HCOVf (Lamarre & Talbot 1989) strain 229E
##########

#4°C : no significant decline 

#22°C 
I22HCoVf<-digitize("Data/figures/Fig2_HCoVf.JPG")

#33°C 
I33HCoVf<-digitize("Data/figures/Fig2_HCoVf.JPG")

#37°C 
I37HCoVf<-digitize("Data/figures/Fig2_HCoVf.JPG")

##########
## CCV (Saknimit et al 1988)
##########
#60°C
I60CCV<-c()
I60CCV$x<-c(0,1,5)/60
I60CCV$y<-c(0,-1.56,-2.64)

##########
## FIPV a (Christianson et al., 1989)
##########

#54°C
I54FIPV<-digitize("Data/figures/Fig2_FIPV.JPG")

##########
## FIPV b (Gundy et al. 2008)
##########

#23°C
I23FIPVb<-digitize("Data/figures/Fig1_FIPVb.JPG")

##########
## PEDV a (Hoffman and Wyler 1989)
##########

#50°C
I50PEDVa<-digitize("Data/figures/Fig2_PEDVa.JPG")


##########
## PEDV b (Qvist-Rybachuck et al. 2016)
##########

#40°C
I40PEDVb<-digitize("Data/figures/Fig1a_PEDVb.JPG")

#44°C
I44PEDVb<-digitize("Data/figures/Fig1a_PEDVb.JPG")

#48°C
I48PEDVb<-digitize("Data/figures/Fig1a_PEDVb.JPG")

##########
## PEDV c (Qvist-Rybachuck et al. 2016)
##########

# 4°C not enough inactivation
# 44°C not enough inactivation

#48°C
I48PEDVc<-c()
I48PEDVc$x<-c(0,1,5,10)/60
I48PEDVc$y<-c(0,-0.3,-1.7,-1.7)


##########
## BCoV (Mullis et al 2012)
##########

# a Salad
I4BCoVa<-digitize("Data/figures/Fig2A_BCoV_salad.JPG")
I4BCoVa$x<-c(0,48,120,144,12*24,14*24,480) # Correction of the x-axis (not proportional)

# b Medium
I4BCoVb<-digitize("Data/figures/FIig2B_BCoV_medium.JPG")
I4BCoVb$x<-c(0,48,120,144,12*24,14*24,480,25*24,30*24) # Correction of the x-axis (not proportional)



###### Save the changes
save.image("Output/inactivation_kinetics_preprint.Rdata")

### Dataset characteristics
load("Output/inactivation_kinetics_preprint.Rdata")
Inactivation<-ls()
nval<-c()
for (i in 1:length(Inactivation))
{print(length(eval(parse(text = paste0(Inactivation[i],"$x")))))
  nval[i]<-length(eval(parse(text = paste0(Inactivation[i],"$x"))))}
sum(nval) # points
length(nval) # kinetics
sum(nval)/length(nval)

data=data.frame(Inactivation=Inactivation,nval=nval)
ggplot(data = data, aes(x = Inactivation,y=nval)) +
  geom_bar(stat = "identity", position = "dodge",width=0.6)+
  coord_flip()+theme(axis.text = element_text(size = 5))

pdf(file="Output/kinetics_caracteristics.pdf")
ggplot(data = data, aes(x = Inactivation,y=nval)) +
  geom_bar(stat = "identity", position = "dodge",width=0.6)+
  coord_flip()+theme(axis.text = element_text(size = 5))
dev.off()
