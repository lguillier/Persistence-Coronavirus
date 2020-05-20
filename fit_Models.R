library(qpcR) # for RSS function
library(nlstools)
library(rgl)
library(ggplot2)
library(ggthemes)
library(dplyr)
library(rsample)
library(broom)
library(purrr)
library(directlabels)

source('R/coronavirus_model1.R') # Temperature effect only (Linear effect of T on log10D = Bigelow model)
source('R/coronavirus_model2.R') # Temperature effect only (Mafart et al 2001 with n=2)
source('R/coronavirus_model3.R') # Temperature effect only (Mafart et al 2001 with n to be estimated)
source('R/coronavirus_model4.R') # Temperature (Mafart et al 2001 with n=2) and RH effects
source('R/coronavirus_model5.R') # Temperature (Mafart et al 2001 with n to be estimated) and RH effects


#### 1.Data: import, vizualize, prepare

## 1.1 Import
data<-read.csv2("Data/data_Dvalues.csv",header = T,sep = ";")

## 1.2 Vizualize

ggplot(data, aes(Temperature, log10D)) + 
  geom_point()

# Figure 1 of Guillier et al preprint

fig1<-ggplot(data, aes(x=Temperature, y=log10D, color=Virus,shape=Fomites)) + geom_point(size = 3)
fig1+theme_few() + scale_colour_few()
figure1<-fig1+theme_bw(base_size=15)+theme(axis.text=element_text(size=12))+xlab("Temperature (°C)") + ylab(bquote(~log[10]~'(D) (D in hours)'))

figure1

tiff(file="Output/Figure1.tiff",width = 7, height = 4, units = 'in',res=300)
figure1
dev.off()


## 1.3 Prepare
set.seed(21350)
nboot<-1000
boots <- bootstraps(data, times = nboot)


#### 2. Model #1 - Temperature only (classical Bigelow)

## 2.1 Simple nls fit  
fitmodel1<- nls(log10D~coronavirus_model1(Temperature,Tref=4,log10DTref,zT),
           start = list(log10DTref=2.5,zT=10),    
           upper=c(4,20),
           lower=c(0,0.01),
           data = data,
           algorithm="port",
           trace=TRUE)
RSS(fitmodel1)
fig2a<-ggplot(data, aes(Temperature, log10D)) + geom_point()+geom_line(aes(y = predict(fitmodel1)),size=1.2)
fig2a+theme_bw(base_size=15)+theme(axis.text=element_text(size=12))+xlab("Temperature (°C)") + ylab(bquote(~log[10]~'(D) (D in hours)'))


## 2.2 Bootstrap with nlsMicrobio package
fitmodel1.boot<-nlsBoot(fitmodel1,niter=nboot)

plot(fitmodel1.boot)
plot(fitmodel1.boot, type = "boxplot", ask = FALSE)
summary(fitmodel1.boot)

## 2.3 Bootstrap using broom package
fit_nls_on_bootstrap <- function(split) {
  nls(log10D~coronavirus_model1(Temperature,Tref=4,log10DTref,zT), analysis(split), start = list(log10DTref=3.5,zT=10))
}

boot_models <- boots %>% 
  mutate(model = map(splits, fit_nls_on_bootstrap),
         coef_info = map(model, tidy))

boot_coefs <- boot_models %>% 
  unnest(coef_info)

alpha <- .05
boot_coefs %>% 
  group_by(term) %>%
  summarize(low = quantile(estimate, alpha / 2),
            high = quantile(estimate, 1 - alpha / 2))

ggplot(boot_coefs, aes(estimate)) + 
  geom_histogram(binwidth = 0.25) + 
  facet_wrap(~ term, scales = "free")

boot_aug <- boot_models %>% 
  mutate(augmented = map(model, augment)) %>% 
  unnest(augmented)

tiff(file="Output/Figure2A.tiff",width = 5, height = 4, units = 'in',res=300)
ggplot(boot_aug, aes(Temperature, log10D)) +xlim(0,70)+ylim(-3,3.5)+
  geom_point() +  geom_line(aes(y = .fitted, group = id), col="grey", alpha=.2)+theme_bw(base_size=15)+theme(axis.text=element_text(size=12))+xlab("Temperature (°C)")+ ylab(bquote(~log[10]~'(D) (D in hours)'))+annotate(x=60,y=3,geom="text",label="A",fontface=2,size=10)
dev.off()



#### 3. Model #2 - Temperature only with Mafart model with n=2

## 3.1 Simple nls fit 

fitmodel2<- nls(log10D~coronavirus_model2(Temperature,Tref=4,log10DTref,zT),
           start = list(log10DTref=2.5,zT=3),    
           upper=c(4,40),
           lower=c(0,0),
           data = data,
           algorithm="port",
           trace=TRUE)
RSS(fitmodel2)
fig2b<-ggplot(data, aes(Temperature, log10D)) + 
  geom_point()+geom_line(aes(y = predict(fitmodel2)),size=1.2)
fig2b+theme_bw(base_size=15)+theme(axis.text=element_text(size=12))+xlab("Temperature (°C)") + ylab(bquote(~log[10]~'(D) (D in hours)'))


# 3.2 Bootstrap with nlsMicrobio package
fitmodel2.boot<-nlsBoot(fitmodel2,niter=nboot)

plot(fitmodel2.boot)
plot(fitmodel2.boot, type = "boxplot", ask = FALSE)
summary(fitmodel2.boot)


## 3.3 Bootstrap using broom package
fit_nls_on_bootstrap2 <- function(split) {
  nls(log10D~coronavirus_model2(Temperature,Tref=4,log10DTref,zT), analysis(split), start = list(log10DTref=2.2,zT=30))
}

boot_models <- boots %>% 
  mutate(model = map(splits, fit_nls_on_bootstrap2),
         coef_info = map(model, tidy))

boot_coefs <- boot_models %>% 
  unnest(coef_info)

alpha <- .05
boot_coefs %>% 
  group_by(term) %>%
  summarize(low = quantile(estimate, alpha / 2),
            high = quantile(estimate, 1 - alpha / 2))

ggplot(boot_coefs, aes(estimate)) + 
  geom_histogram(binwidth = 0.25) + 
  facet_wrap(~ term, scales = "free")

boot_aug <- boot_models %>% 
  mutate(augmented = map(model, augment)) %>% 
  unnest(augmented)

tiff(file="Output/Figure2B.tiff",width = 5, height = 4, units = 'in',res=300)
ggplot(boot_aug, aes(Temperature, log10D)) +xlim(0,70)+ylim(-3,3.5)+
  geom_point() +  geom_line(aes(y = .fitted, group = id), col="grey", alpha=.2)+theme_bw(base_size=15)+theme(axis.text=element_text(size=12))+xlab("Temperature (°C)")+ ylab(bquote(~log[10]~'(D) (D in hours)'))+annotate(x=60,y=3,geom="text",label="B",fontface=2,size=10)
dev.off()


#### 4. Model #3 - Temperature only with Mafart model with n to be estimated

## 4.1 Simple nls fit

fitmodel3<- nls(log10D~coronavirus_model3(Temperature,Tref=4,log10Dref,zT,n),
           start = list(log10Dref=2,zT=30,n=2.5),    
           upper=c(4,40,4),
           lower=c(0,0.01,0.10),
           data = data,
           algorithm="port",
           trace=TRUE)
RSS(fitmodel3)
summary(fitmodel3)

ggplot(data, aes(Temperature, log10D)) + 
  geom_point()+geom_line(aes(y = predict(fitmodel3)))

## 4.2 Bootstrap with nlsMicrobio package
fitmodel3.boot<-nlsBoot(fitmodel3,niter=nboot)

plot(fitmodel3.boot)
plot(fitmodel3.boot, type = "boxplot", ask = FALSE)
summary(fitmodel3.boot)

## 4.3 Bootstrap using broom package
fit_nls_on_bootstrap3 <- function(split) {
  nls(log10D~coronavirus_model3(Temperature,Tref=4,log10Dref,zT,n), analysis(split), start = list(log10Dref=2,zT=30,n=2.5))
}

boot_models <- boots %>% 
  mutate(model = map(splits, fit_nls_on_bootstrap3),
         coef_info = map(model, tidy))

boot_coefs <- boot_models %>% 
  unnest(coef_info)

alpha <- .05
boot_coefs %>% 
  group_by(term) %>%
  summarize(low = quantile(estimate, alpha / 2),
            high = quantile(estimate, 1 - alpha / 2))

ggplot(boot_coefs, aes(estimate)) + 
  geom_histogram(binwidth = 0.25) + 
  facet_wrap(~ term, scales = "free")

boot_aug <- boot_models %>% 
  mutate(augmented = map(model, augment)) %>% 
  unnest(augmented)

tiff(file="Output/Figure2C.tiff",width = 5, height = 4, units = 'in',res=300)
ggplot(boot_aug, aes(Temperature, log10D)) +xlim(0,70)+ylim(-3,3.5)+
  geom_point() +  geom_line(aes(y = .fitted, group = id), col="grey", alpha=.2)+theme_bw(base_size=15)+theme(axis.text=element_text(size=12))+xlab("Temperature (°C)")+ ylab(bquote(~log[10]~'(D) (D in hours)'))+annotate(x=60,y=3,geom="text",label="C",fontface=2,size=10)
dev.off()


#### 5. Model #4 - Temperature and relative humidity (Mafart for T with n=2 + model for RH)

## 5.1 Simple nls fit
fitmodel4<- nls(log10D~coronavirus_model4(Temperature,HR,Tref=4,log10Dref,zT,zRH),
                start = list(log10Dref=2.3,zT=30,zRH=70),    
                upper=c(4,60,10000),
                lower=c(0,0.01,0),
                data = data,
                algorithm="port",
                trace=TRUE)
RSS(fitmodel4)
summary(fitmodel4)
ggplot(data, aes(Temperature, log10D)) + 
  geom_point()+geom_line(aes(y = predict(fitmodel4)))

## 5.2 Bootstrap with nlsMicrobio package
fitmodel4.boot<-nlsBoot(fitmodel4,niter=1100)
#write.csv(fitmodel4.boot$coefboot,file = "Output/model4_params.csv")
plot(fitmodel4.boot)
plot(fitmodel4.boot, type = "boxplot", ask = FALSE)
summary(fitmodel4.boot)


#### 6.  Model #5 - Temperature and relative humidity (Mafart for T with n to be estimated + model for RH)

## 6.1 Simple nls fit
fitmodel5<- nls(log10D~coronavirus_model5(Temperature,HR,Tref=4,log10DTref,zT,n,zRH),
           start = list(log10DTref=2,zT=30,n=2.5,zRH=70),    
           upper=c(4,40,4,10000),
           lower=c(0,0.01,0.1,0),
           data = data,
           algorithm="port",
           trace=TRUE)
RSS(fitmodel5)
summary(fitmodel5)
ggplot(data, aes(Temperature, log10D)) + 
  geom_point()+geom_line(aes(y = predict(fitmodel5)))

## 6.2 Bootstrap with nlsMicrobio package
fitmodel5.boot<-nlsBoot(fitmodel5,niter=nboot)
plot(fitmodel5.boot)
plot(fitmodel5.boot, type = "boxplot", ask = FALSE)
summary(fitmodel5.boot)



####### 7. Best model 
#BIC=p.Ln(RSS/p)+k.Ln(p)	eq(5) in article

p<-length(data$log10D)
BICmodel1<-p*log(RSS(fitmodel1)/p)+2*log(p)
BICmodel2<-p*log(RSS(fitmodel2)/p)+2*log(p)
BICmodel3<-p*log(RSS(fitmodel3)/p)+3*log(p)
BICmodel4<-p*log(RSS(fitmodel4)/p)+3*log(p)
BICmodel5<-p*log(RSS(fitmodel5)/p)+4*log(p)

#AIC=n*log(RSS/n)+2*p
AICmodel1<-p*log(RSS(fitmodel1)/p)+2*2
AICmodel2<-p*log(RSS(fitmodel2)/p)+2*2
AICmodel3<-p*log(RSS(fitmodel3)/p)+3*2
AICmodel4<-p*log(RSS(fitmodel4)/p)+3*2
AICmodel5<-p*log(RSS(fitmodel5)/p)+4*2

####### 8. Illustratation of T and  RH effects in 3D

library(rgl) # plot3D
library(plot3D)# Scatter3D
#rgl_init()


data_plot<-read.csv("Data/rgl_coronavirus.csv",header=TRUE,sep=";")

log10D<-coronavirus_model4(data_plot$T,data_plot$HR,4,coef(fitmodel4)[1],coef(fitmodel4)[2],coef(fitmodel4)[3])

# rgl plot
plot3d(x=data_plot$T,y=data_plot$HR,z=log10D,xlab='',ylab='',zlab ='')
points3d(x=data$Temperature,y=data$HR,z=data$log10D,size = 10, color = "grey")
mtext3d('Temperature (C)', "x++", las=2,line = 3) 
mtext3d("log10(D) (D in hours)", "z++", line = 3)
mtext3d("Relative Humidity (%)", "y+-", line = 3)

#rgl.snapshot( filename="Output/Figure3A.png", fmt="png", top=TRUE)

# Plot3d plot
scatter3D(x=data_plot$T,y=data_plot$HR,z=log10D,bty = "b2", colvar = NULL, col = "grey",
          pch = 19, cex = 0.25,xlab = 'Temperature (C)',ylab = "Relative Humidity (%)",zlab="log10(D) (D in hours)")
scatter3D(x=data$Temperature,y=data$HR,z=data$log10D,add=TRUE,colvar = NULL, col = "blue",
          pch = 19, cex = 1.0)

# Figure 3B
log10Dpred<-coronavirus_model4(data$Temperature,data$HR,4,coef(fitmodel4)[1],coef(fitmodel4)[2],coef(fitmodel4)[3])
data2<-data
data2$pred<-log10Dpred


fig3B<-ggplot(data2, aes(x=pred, y=log10D, color=Virus,shape=Fomites)) + geom_point(size = 3)+
  geom_abline(intercept = 0, slope = 1, col="black", linetype="dashed", size=1.5)
fig3B+theme_few() + scale_colour_few()+xlim(-3,3)+ylim(-3,3)
 figure3B<-fig3B+theme_bw(base_size=15)+theme(axis.text=element_text(size=12))+xlab(bquote(~log[10]~'(D) - Predicted')) + ylab(bquote(~log[10]~'(D) - Observed'))

 tiff(file="Output/Figure3B.tiff",width = 7, height = 4, units = 'in',res=300)
 figure3B
 dev.off()

###### 9. Contour plot

####### 9.1 Whole range  

  # Create a sequence of incrementally increasing (by 0.25 units) values for both T and RH
 Tgrid <-  seq(4,70, 0.25)
 RHgrid <-  seq(0, 100, 0.25)
 # Generate a dataframe with every possible combination of T and RH
 data.fit <-  expand.grid(Temperature = Tgrid, RH = RHgrid)
 # Feed the dataframe with a matrix output with estimates of
 # log10D for each combination of T and RH
log10D<-  coronavirus_model4(data.fit$Temperature,data.fit$RH,4,coef(fitmodel4)[1],coef(fitmodel4)[2],coef(fitmodel4)[3])

data_contour<-data.frame(Temperature=data.fit$Temperature,RH=data.fit$RH,log10D=log10D)
plot1 <- ggplot(data_contour, aes(x = Temperature, y = RH, z = log10D)) +
  stat_contour()
plot1

plot2 <- ggplot()  +
  theme_bw() +
  xlab("Temperature") +
  ylab("RH") +
  stat_contour(data = data_contour, aes(x = Temperature, y = RH, z = log10D, colour = ..level..),
               breaks = seq(-2,2,0.5), size = 1) +
  scale_color_continuous(name = "log10(D)") +
  theme(legend.justification=c(1, 0), legend.position=c(1, 0))
plot2
plot3 <- direct.label(plot2, "bottom.pieces")
plot3

log10D<-coronavirus_model4(data$Temperature,data$HR,4,coef(fitmodel4)[1],coef(fitmodel4)[2],coef(fitmodel4)[3])
data_contour2<-data.frame(Temperature=data$Temperature,RH=data$HR,log10D=data$log10D)
plot4<-plot3+geom_point(data = data_contour2, aes(x=Temperature, y = RH),shape = 1, size = 2.5)+geom_text(data=data_contour2,aes(x=Temperature,y=RH,label=log10D),hjust=0, vjust=0)

####### 9.2 RH 0-98% T 0-50°C Model 4   

# Create a sequence of incrementally increasing (by 0.25 units) values for both T and RH
Tgrid2 <-  seq(4,50, 0.25)
RHgrid2 <-  seq(0, 98, 0.25)
# Generate a dataframe with every possible combination of T and RH
data.fit2 <-  expand.grid(Temperature = Tgrid2, RH = RHgrid2)
# Feed the dataframe into the model4 and receive a matrix output with estimates of
#  for each combination of T and RH
log10D_4<-  coronavirus_model4(data.fit2$Temperature,data.fit2$RH,4,coef(fitmodel4)[1],coef(fitmodel4)[2],coef(fitmodel4)[3])

data_contour_4<-data.frame(Temperature=data.fit2$Temperature,RH=data.fit2$RH,log10D=log10D_4)
plot5 <- ggplot()  +
  theme_bw() +
  xlab("Temperature") +
  ylab("RH") +
  stat_contour(data = data_contour_4, aes(x = Temperature, y = RH, z = log10D, colour = ..level..),
               breaks = seq(-0.5,2.3,0.2), size = 1) +
  scale_color_continuous(name = "log10(D)") +ylim(0,95)+
  theme(legend.justification=c(1, 0), legend.position=c(1, 0))
plot5
plot6 <- direct.label(plot5, "bottom.pieces")
plot6

data_surface<-read.csv2("Data/data_Dvalues_surface2.csv",header = T,sep = ";")

data_contour2<-data.frame(Temperature=data_surface$Temperature,RH=data_surface$HR,log10D=data_surface$log10D,label=data_surface$label)
plot7<-plot6+geom_point(data = data_contour2, aes(x=Temperature, y = RH),shape = 1, size = 2.5)+geom_text(data=data_contour2,aes(x=Temperature,y=RH,label=label),hjust=0, vjust=0)
plot7

####### 9.3 RH 0-98% T 0-50°C Model 2   

#Same Grid used
log10D_2<-  coronavirus_model2(data.fit2$Temperature,4,coef(fitmodel2)[1],coef(fitmodel2)[2])

data_contour_2<-data.frame(Temperature=data.fit2$Temperature,RH=data.fit2$RH,log10D=log10D_2)
plot8 <- ggplot()  +
  theme_bw() +
  xlab("Temperature") +
  ylab("RH") +
  stat_contour(data = data_contour_2, aes(x = Temperature, y = RH, z = log10D, colour = ..level..),
               breaks = seq(-0.5,2.3,0.2), size = 1) +
  scale_color_continuous(name = "log10(D)") +ylim(0,95)+
  theme(legend.justification=c(1, 0), legend.position=c(1, 0))
plot8
plot9 <- direct.label(plot8, "bottom.pieces")
plot9

data_surface<-read.csv2("Data/data_Dvalues_surface2.csv",header = T,sep = ";")

data_contour2<-data.frame(Temperature=data_surface$Temperature,RH=data_surface$HR,log10D=data_surface$log10D,label=data_surface$label)
plot10<-plot9+geom_point(data = data_contour2, aes(x=Temperature, y = RH),shape = 1, size = 2.5)+geom_text(data=data_contour2,aes(x=Temperature,y=RH,label=label),hjust=0, vjust=0)
plot10

### 9.4 Compared model #2 and model #4 residuals (Supplementary material -2)

resids_2=resid(fitmodel2)
resids_4=resid(fitmodel4)
resids=c(resids_2,resids_4)
models=c(rep("#2",102),rep("#4",102))
obs<-c(data$log10D,data$log10D)
data_resid<-data.frame(obs=obs,resids=resids,models=models)

figSM2<-ggplot(data_resid, aes(x=obs, y=resids,color=models)) + geom_point(size = 3)+
  geom_abline(intercept = 0, slope = 0, col="black", linetype="dashed", size=1.5)
figSM2+theme_few()
figSM2<-figSM2+theme_bw(base_size=15)+theme(axis.text=element_text(size=12))+xlab(bquote(~log[10]~'(D) - Observed')) + ylab('Model residuals')

figSM2
