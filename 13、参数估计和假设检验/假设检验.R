#p值的计算
#z统计量为正数时
z <- 0.8
#z对应的单向量累计概率
1 - pnorm(z, 0, 1)
#z对应的双向量累计概率，即p值
p1 <- ( 1 - pnorm(z, 0, 1) )*2
#统计量为负数时
z <- -2.2
#z对应的单向量累计概率
pnorm(z, 0, 1)
#z对应的双向量累计概率，即p值
p2 <- pnorm(z, 0, 1)*2


#假设检验
getwd()
data <- read.csv("lunzhou.csv")
x <- mean(data[,1])
z <- (x-40) / ( 2/sqrt(30) )
p <- ( 1-pnorm(z) )*2
