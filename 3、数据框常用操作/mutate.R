mtcars   #R自带的数据集
df1 <- head(mtcars)  #截取前6行
df1 <- df1[1:3]  #截取1-3列
df1

install.packages("dplyr")
library(dplyr)

df1 <- mutate(df1, sum = mpg+cyl+disp, mean = (mpg+cyl+disp)/3)
df1

df1 <- mutate(df1, sum = mpg+cyl+disp, mean = (mpg+cyl+disp)/3, x = sum+mean) #可以调用之前创建的变量
df1
