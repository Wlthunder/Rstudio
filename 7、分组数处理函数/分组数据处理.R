#创建数据集df1
age <- c(18, 18, 28, 28, 28, 38, 38, 38, 38)
sex <- c("female", "male", "male", "male", "female", "female", "male", "female", "male")
income <- c(2000, 3000, 4200, 5000, 5300, 5700, 6000, 7000, 9000)
education <- c("高中", "高中", "大学", "大学", "大学", "硕士", "硕士", "大学", "大学")
df1 <- data.frame(age, sex, education, income)
#查看df1
df1
#需求1：男女各自收入总和
#需求2：不同性别不同学历的人群的平均收入

#tapply数
tapply(df1$income, df1$sex, sum)
tapply(df1$income, c(df1$sex, df1$education), mean)
tapply(df1$income, list(df1$sex, df1$education), mean)
#by函数
by(df1$income, df1$sex, sum)
by(df1$income, list(df1$sex, df1$education), mean)
#aggregate函数
aggregate(income~sex, df1, sum)
aggregate(income~sex+education, df1, mean)


