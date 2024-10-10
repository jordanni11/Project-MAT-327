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









