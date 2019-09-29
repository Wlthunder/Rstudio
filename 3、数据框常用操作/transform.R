mtcars   #R自带的数据集
df1 <- head(mtcars)  #截取前6行
df1 <- df1[1:3]  #截取1-3列
df1

transform(df1, sum = mpg + cyl +disp, mean = (mpg + cyl +disp)/3)
df1
df1 <- transform(df1, sum = mpg + cyl +disp, mean = (mpg + cyl +disp)/3)
df1

