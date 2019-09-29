data1 <- rnorm(10000, mean = 7000, sd = 2000)
data1 <- as.data.frame(data1)        
data1[, 2] <- "male"                 
names(data1) <- c("income", "gender")

#1.qq图
qqnorm(data1[, 1])
qqline(data1[, 1], col = "darkred")

#2.shapiro.test 当w接近1，p>0.05时，说明数据符合正态分布
shapiro.test(data1[, 1])
shapiro.test(sample(data1[, 1], 5000))

#保存p值
save_data <- c()
for (i in 1:100)
{
  sample_data <- shapiro.test(sample(data1[, 1], 5000))
  save_data <- append(save_data, sample_data[["p.value"]])
}
length(save_data[save_data <= 0.05])


#3.KS检验 D接近0，且p>0.05,说明数据符合正态分布
ks.test(
  data1[, 1], 
  rnorm(10000, mean = mean(data1[, 1]), sd = sd(data1[, 1]))
)








