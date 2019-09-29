data1 <- rnorm(10000, mean = 7000, sd = 2000)
data1 <- as.data.frame(data1)        
data1[, 2] <- "male"                 
names(data1) <- c("income", "gender")
#1.当总体分布服从正态分布
#每次抽样的样本容量
n <- 50

#统计量的统计函数
f <- mean

#抽样次数,抽1000个样本
times <- 1000

#保存抽样后的统计量，这里指均值
c_data <- c()

for (i in 1:times) 
{
  sampledata <- sample(data1[, 1], n)
  c_data <- append(c_data, f(sampledata))
}
#绘出统计量的分布图
library(ggplot2)
ggplot( data = NULL, aes(c_data) ) + geom_histogram(stat = "density")

shapiro.test(c_data)

#2.当总体分布不服从正态分布
#每次抽样的样本容量
n <- 100

#统计量的统计函数
f <- mean

#抽样次数,抽1000个样本
times <- 1000

#保存抽样后的统计量，这里指均值
c_data <- c()

setwd("C:/Users/wxdn/Desktop/R/12、正态分布和抽样分布")
getwd()

data <- read.csv("data.csv")
ggplot(data, aes(收入)) + geom_histogram(stat = "density")

for (i in 1:times)
{
  sampledata <- sample(data[, 3], n)
  c_data <- append(c_data, f(sampledata))
}

#绘出统计量的分布图
library(ggplot2)
ggplot( data = NULL, aes(c_data) ) + geom_histogram(stat = "density")

shapiro.test(c_data)


             #从均值和标准差来验证中心极限定理
#样本均值抽样分布，均值等于总体均值，标准差等于总体 标准差/根号n

#样本均值 抽样分布的均值
Xmean <- mean( data[, 3])

#样本均值 抽样分布的标准误
Xsd <- sd( data[, 3] / sqrt(n) )

ks.test(
  c_data,
  rnorm(times, mean = Xmean, sd = Xsd)
)


save_data <- c()
for (i in 1:100)
{
  sample_data <- ks.test(c_data,
                        rnorm(times, mean = Xmean, sd = Xsd)
                       )
  save_data <- append(save_data, sample_data[["p.value"]])
}
length(save_data[save_data > 0.05])
length(save_data[save_data < 0.05])




