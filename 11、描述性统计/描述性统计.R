#1.summary
#数据源单列情况
mtcars
data <- mtcars$cyl
s1 <- summary(data)
s1[1]
s1[["Min."]]

#数据源多列情况
data <- mtcars[c("cyl", "wt", "hp")]
s2 <- summary(data)
s2[, 2][1]

strsplit(s2[, 2][1], ":")
unlist(strsplit(s2[, 2][1], ":"))#向量
unlist(strsplit(s2[, 2][1], ":"))[2]
as.numeric(unlist(strsplit(s2[, 2][1], ":"))[2])

#2.pastecs包中的stat.desc函数
install.packages("pastecs")
library(pastecs)
s3 <- stat.desc(data)
s3[, 2][4]


#3.table函数
#单变量计数
mtcars$cyl
table(mtcars$cyl)

#多变量计数
table(mtcars$cyl, mtcars$vs)
table(mtcars$cyl, mtcars$vs, dnn = c("cyl", "vs"))






