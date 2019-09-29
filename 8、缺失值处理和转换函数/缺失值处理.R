ID <- paste("A", "00", 1:5, sep = "")
age <- c(24, NA, 35, 19, -20)
df1 <- data.frame(ID, age)
df1
#判别有无缺失值
is.na(df1)
#将不符合常理的值定义为缺失值
df1$age[ df1$age < 0 ] <- NA
df1
#替换缺失值
df1[ is.na(df1) ] <- mean(df1$age, na.rm = TRUE)#缺失值用了剩余3个数的均值来替代
df1

na.omit(df1)#慎用
