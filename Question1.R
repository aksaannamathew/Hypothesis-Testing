install.packages("readr")
library(readr)
cutlets <- read.csv("C:\\Users\\91755\\Desktop\\Assignment\\6 - Hypo Testing\\Cutlets.csv")
attach(cutlets)
View(cutlets)

##normality test
#Ho: DAta is normal
#H1: Data is not normal
shapiro.test(cutlets$Unit.A) #p>0.05, Data is normal
shapiro.test(cutlets$Unit.B) #p> 0.05, Data is normal
#therefore the data is normal

##variance test
#Ho: Variance are equal
#H1: Variance are not equal
var.test(Unit.A, Unit.B) # p>0.05, therefore variance are equal

#2 sample t test for equal variance
#H0: Unit A&B have same diameters
#H1: Unit A&B have different diameters
t.test(Unit.A, Unit.B, alternative = "two.sided", conf.level = 0.95, correct = TRUE)
#p>.05, therefore accept Ho
#therefore, unit A&B have same diameters