BuyerRatio <- read.csv("C:\\Users\\91755\\Desktop\\Assignment\\6 - Hypo Testing\\BuyerRatio.csv")
attach(BuyerRatio)
View(BuyerRatio)

#chi-square test
#H0: Male-female buyer ratio are similar across regions
#H1: Male-female buyer ratio are not similar across regions
chisq.test(BuyerRatio[,-1])
#p>0.05, fails to reject H0
#Male-female buyer ratio are similar across regions