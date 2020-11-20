CostomerOrderForm <- read.csv("C:\\Users\\91755\\Desktop\\Assignment\\6 - Hypo Testing\\Costomer+OrderForm.csv")
attach(CostomerOrderForm)
View(CostomerOrderForm)

install.packages("tidyr")
library(tidyr)
table <- table(gather(CostomerOrderForm))
table

#Chi-square test
#H0: Defectives not varies by centre
#H1: Defectives varies by centre
chisq.test(table)
#p>0.05, therefore accept H0
#Defectives not varies by centre