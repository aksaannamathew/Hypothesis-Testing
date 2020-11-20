Faltoons <- read.csv("C:\\Users\\91755\\Desktop\\Assignment\\6 - Hypo Testing\\Faltoons.csv")
attach(Faltoons)
View(Faltoons)

install.packages("tidyr")
library(tidyr)
table <- table(gather(Faltoons))
table

#Chi-square test
#H0: % of male versus female walking to the store based on day of the week are same.
#H1: % of male versus female walking to the store based on day of the week is different.
chisq.test(table)
#p<0.05, accpet H1
#Therefore, % of male versus female walking to the store based on day of the week is different