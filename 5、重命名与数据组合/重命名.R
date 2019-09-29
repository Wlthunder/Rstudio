#数据源mtcars
data <- mtcars

#重命名—names函数
names(data)[1] <- "啦啦"  #修改第一列名称
data
names(data)[2] <- "哈哈"
data  #使用后会修改源数据

#重命名—nrename函数
install.packages("reshape")
library(reshape)

rename(data, c(mpg = "嘿嘿"))
data

data <- rename(data, c(mpg = "啦啦"))
data

data <- rename(data, c(mpg = "嘿嘿", cyl = "嘟嘟"))
data
