library(ggplot2)
#模拟生成一个正态分布，均值为7000，标准差为2000，数目为10000的男性毕业收入
data1 <- rnorm(10000, mean = 7000, sd = 2000)
data1 <- as.data.frame(data1)         #向量转化成数据框
data1[, 2] <- "male"                  #增加 1 列
names(data1) <- c("income", "gender") #改变列名称
ggplot(data1, aes(income)) + geom_histogram()
ggplot(data1, aes(income)) + geom_histogram(stat = "density")

#模拟生成一个正态分布，均值为5000，标准差为2000，数目为10000的女性毕业收入
data2 <- rnorm(10000, mean = 5000, sd = 2000)
data2 <- as.data.frame(data2)         #向量转化成数据框
data2[, 2] <- "female"                  #增加 1 列
names(data2) <- c("income", "gender") #改变列名称
ggplot(data2, aes(income)) + geom_histogram(stat = "density")

#将男女数据结合起来
Newdata <- rbind(data1, data2)

ggplot(Newdata, aes(income)) + geom_histogram(stat = "density") + facet_grid(gender~.)
