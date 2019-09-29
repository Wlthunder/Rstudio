#双因素方差分析
#数据源
data2 <- ToothGrowth

#步骤1.对数据进行初步了解
attach(data2)
#查看因素的水平及其频数分布
table(supp, dose)
#看变量数和观测数
str(data2)
#查看各组均值和标准差
aggregate(len~supp + dose, data2, mean)
aggregate(len~supp + dose, data2, sd)

#步骤2.方差齐性检验
#方差齐性检验（interaction可以将多个自变量折叠为一个单一的变量 用于表示 不同变量因素之间的组合）
bartlett.test(len~interaction(supp, dose), data2)

#步骤3.方差分析
dose <- factor(dose) #将dose转化为因子变量
data2_aov <- aov(len~supp + dose + supp: dose)  #因变量len 自变量supp*dose
#等价于data2_aov <- aov(len~supp*dose)  
summary(data2_aov)

detach(data2)
