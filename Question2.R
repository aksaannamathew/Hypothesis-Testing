LabTAT <- read.csv("C:\\Users\\91755\\Desktop\\Assignment\\6 - Hypo Testing\\LabTAT.csv")
attach(LabTAT)
View(LabTAT)

#Normality test
#H0:Data is normal
#H1:Data is not normal
install.packages("nortest")
library(nortest)
ad.test(Laboratory.1) 
ad.test(Laboratory.2)
ad.test(Laboratory.3)
ad.test(Laboratory.4)
#Data is normally distributed

stacked_data <- stack(LabTAT)
attach(sta)
View(stacked_data)

install.packages("car")
library(car)
#Varince test
leveneTest(stacked_data$values~stacked_data$ind)
#variance are equal

##ANOVA test
#Ho: mean(1) = mean(2) = mean(3) = mean(4)
#H1: Atleast one laboratory having different avarage TAT
anova_result <- aov(values~ind, data = stacked_data)
summary(anova_result)
#p<.05, accept H1
#Atleast one laboratory having different avarage TAT