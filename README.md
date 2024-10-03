# Project-MAT-327

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


hist(Expense_Budget_20240918$`Current Modified Budget Amount`,ylab= "Observations",xlab = "Dollars", main = ("Current Modified Budget Amount"))
hist(Expense_Budget_20240918$`Financial Plan Amount`,ylab= "Observations",xlab = "Dollars",main = ("Financial Plan Amount"))
hist(Expense_Budget_20240918$`Adopted Budget Amount`,ylab= "Observations",xlab = "Dollars",main = ("Adopted Budget Amount"))
hist(Expense_Budget_20240918$`Financial Plan - Number of Contracts`,ylab= "Observations",xlab = "Number of Contracts",main = ("Financial Plan Number of Contracts"))

