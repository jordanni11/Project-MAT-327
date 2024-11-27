View(Expense_Budget_20240918)

hist(Expense_Budget_20240918$`Current Modified Budget Amount`,ylab= "Observations",xlab = "Dollars", main = ("Current Modified Budget Amount"))
hist(Expense_Budget_20240918$`Financial Plan Amount`,ylab= "Observations",xlab = "Dollars",main = ("Financial Plan Amount"))
hist(Expense_Budget_20240918$`Adopted Budget Amount`,ylab= "Observations",xlab = "Dollars",main = ("Adopted Budget Amount"))
hist(Expense_Budget_20240918$`Financial Plan - Number of Contracts`,ylab= "Observations",xlab = "Number of Contracts",main = ("Financial Plan Number of Contracts"))

CMB_median<- median(Expense_Budget_20240918$`Current Modified Budget Amount`)
FP_median<-median(Expense_Budget_20240918$`Financial Plan Amount`)
AB_median<-median(Expense_Budget_20240918$`Adopted Budget Amount`)
FPC_median<-median(Expense_Budget_20240918$`Financial Plan - Number of Contracts`)

CMB_median
FP_median
AB_median
FPC_median

Expense_Budget_20240918$`Current Modified Budget Amount`[Expense_Budget_20240918$`Current Modified Budget Amount`>100000000]<-CMB_median
Expense_Budget_20240918$`Financial Plan Amount`[Expense_Budget_20240918$`Financial Plan Amount`>100000000]<-FP_median
Expense_Budget_20240918$`Adopted Budget Amount`[Expense_Budget_20240918$`Adopted Budget Amount`>100000000]<-AB_median
Expense_Budget_20240918$`Financial Plan - Number of Contracts`[Expense_Budget_20240918$`Financial Plan - Number of Contracts`>30]<-FPC_median

Expense_Budget_20240918$`Current Modified Budget Amount`[Expense_Budget_20240918$`Current Modified Budget Amount`<1000]<-CMB_median
Expense_Budget_20240918$`Financial Plan Amount`[Expense_Budget_20240918$`Financial Plan Amount`<100]<-FP_median
Expense_Budget_20240918$`Adopted Budget Amount`[Expense_Budget_20240918$`Adopted Budget Amount`<100]<-AB_median


hist(Expense_Budget_20240918$`Current Modified Budget Amount`,ylab= "Number of Observations",xlab = "Dollars", main = ("Current Modified Budget Amount"))
hist(Expense_Budget_20240918$`Financial Plan Amount`,ylab= "Number of Observations",xlab = "Dollars",main = ("Financial Plan Amount"))
hist(Expense_Budget_20240918$`Adopted Budget Amount`,ylab= "Number of Observations",xlab = "Dollars",main = ("Adopted Budget Amount"))
hist(Expense_Budget_20240918$`Financial Plan - Number of Contracts`,ylab= "Number of Observations",xlab = "Number of Contracts",main = ("Financial Plan Number of Contracts"))

CMB_mean<- mean(Expense_Budget_20240918$`Current Modified Budget Amount`)
CMB_mean
CMB_median<- median(Expense_Budget_20240918$`Current Modified Budget Amount`)
CMB_median
CMB_variance<- var(Expense_Budget_20240918$`Current Modified Budget Amount`)
CMB_variance
CMB_sd<- sqrt(CMB_variance)
CMB_sd

FP_mean<-mean(Expense_Budget_20240918$`Financial Plan Amount`)
FP_mean
FP_median<-median(Expense_Budget_20240918$`Financial Plan Amount`)
FP_median
FP_variance<-var(Expense_Budget_20240918$`Financial Plan Amount`)
FP_variance
FP_sd<-sqrt(FP_variance)
FP_sd


plot(Expense_Budget_20240918$`Financial Plan Amount`,Expense_Budget_20240918$`Current Modified Budget Amount`, xlab = "Financial Plan Amount", ylab = "Current Modified Budget Amount", main = "NYC Financial Budget Plan")
cor(Expense_Budget_20240918$`Financial Plan Amount`,Expense_Budget_20240918$`Current Modified Budget Amount`)


xbar1 <- mean(Expense_Budget_20240918$`Financial Plan Amount`)
xbar1 #912807.8
xbar2 <- mean(Expense_Budget_20240918$`Current Modified Budget Amount`)
xbar2 #977389.5

s1 <- sd(Expense_Budget_20240918$`Financial Plan Amount`)
s1 #5140558
s2 <- sd(Expense_Budget_20240918$`Current Modified Budget Amount`)
s2 #5198777

n1 <- 923217
n2 <- 923217

t1 <- -qt(0.475,923217-1)
t2 <- -qt(0.475,923217-1)
t1 #0.06270679
t2 #0.06270679

L1<- xbar1 - t1*s1/sqrt(n1)
L1 #912472.3
U1 = xbar1 + t1*s1/sqrt(n1)
U1 #913143.3
913143.3-912472.3 #671

L2 <- xbar2 - t2*s2/sqrt(n2)
L2 #977050.2
U2 = xbar2 + t2*s2/sqrt(n2)
U2 #977728.8
977728.8-977050.2 #678.6


expense.lm <- lm(Expense_Budget_20240918$`Adopted Budget Amount` ~ Expense_Budget_20240918$`Current Modified Budget Amount` + Expense_Budget_20240918$`Financial Plan Amount`, data = Expense_Budget_20240918)
expense.lm
summary(expense.lm) 
predict(expense.lm, newdata = data.frame(Expense_Budget_20240918$`Financial Plan Amount` == 2 ))
hist(resid(expense.lm),main = "Histogram of Residuals of Linear Model",xlab = "Residuals of Expense Linear Model")
plot(fitted.values(expense.lm),resid(expense.lm),main ="Scatterplot",xlab ="Fitted Values of Expense Linear Model" ,ylab ="Residuals of Expense Linear Model" )





