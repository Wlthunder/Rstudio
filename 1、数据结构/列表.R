v1 <- c(1, 2, 3, 4)#向量
m1 <- matrix(1:20, nrow = 4)#矩阵

age <- c(19, 20, 22)
country <- c("中国", "美国", "日本")
df1 <- data.frame(age, country)#数据框

list1 <- list(v=v1, m=m1, df=df1)     #列表    #传参问题
list1

list1[[2]]
list1[[2]][2,2]

list1$v
list1$m
list1$df
