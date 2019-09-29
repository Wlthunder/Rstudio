#生成一个-3到3的序列
x <- seq(-3, 3, length.out = 50) #-3到3之间生成50个数
y <- dnorm(x, 0, 1)              #求标准正态分布下的 点概率

#绘图
library(ggplot2)
ggplot(data = NULL, aes(x, y)) + geom_line(color = "darkred")

#置信水平
c_level <- 0.95

#置信水平下的占比区间
a1 <- qnorm( (1 - c_level)/2 )

ggplot(data = NULL, aes(x, y)) + geom_line(color = "darkred") + 
  geom_vline(xintercept = 0) + geom_vline(xintercept = a1) + geom_vline(xintercept = -a1) + 
  annotate("text", -2.3, 0.01, label = (1 - c_level)/2 ) + annotate("text", 2.3, 0.01, label = (1 - c_level)/2 )

#求出置信区间
paste("置信区间为：[",a1,", ",-a1,"]", sep = "")
