#由已知的正态分布总体来分析个体
#已知某大学男性毕业生收入均值为7000，标准差为2000，求：
#1.若甲同学的收入大于80%的毕业生，那么他的收入至少是多少？（概率求值）
qnorm(0.8, mean = 7000, sd = 2000)
#2.乙同学的收入为8500左右的概率为多少？（点概率）
dnorm(8500, mean = 7000, sd = 2000)
#3.丙同学的收入为9000，他们的收入会比多少人高？（区间概率）
pnorm(9000, mean = 7000, sd = 2000)
