#单因素方差分析
#导入数据
data <- read.csv("data16.csv")

#步骤1.对数据进行初步了解
#查看因素的水平及其频数分布
table(data$培训方案)
#看变量数和观测数
str(data)
#查看各组均值和标准差 
aggregate(销售业绩~培训方案, data, mean)  #因变量~自变量
aggregate(销售业绩~培训方案, data, sd)
#也可以看看数据的图形分布
library(ggplot2)
ggplot(data, aes(销售员, 销售业绩, color = 培训方案)) + geom_point()
ggplot(data, aes(培训方案, 销售业绩)) + geom_boxplot()

#步骤2.方差齐性检验
#方差齐性检验
bartlett.test(销售业绩~培训方案, data)

#步骤3.方差分析
data_aov <- aov(销售业绩~培训方案, data)
summary(data_aov)

#多重比较
TukeyHSD(data_aov)

par(las = 1)
par(mar = c(3, 5, 3, 4))
plot( TukeyHSD(data_aov) )      #在0上说明没有显著差异

#F分布
x <- seq(0, 5, length.out = 1000)
y <- df(x, 2, 42)
ggplot(data = NULL, aes(x,y)) + geom_line() + 
  geom_vline(xintercept = qf(0.95, 2, 42))+
  annotate("text", x = 3.8, y = 0.1, label = qf(0.95, 2, 42)) #竖线右边为拒绝域，F = 3.219942




