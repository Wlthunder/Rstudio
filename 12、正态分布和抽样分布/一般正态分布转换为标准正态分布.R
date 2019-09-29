data1 <- rnorm(10000, mean = 7000, sd = 2000)
data1 <- as.data.frame(data1)         #向量转化成数据框
data1[, 2] <- "male"                  #增加 1 列
names(data1) <- c("income", "gender") 

library(ggplot2)

zdata1 <- ( data1[, 1] - mean(data1[, 1]) ) / sd( data1[, 1] )
ggplot(data = NULL, aes(zdata1)) + geom_histogram(stat = "density")
