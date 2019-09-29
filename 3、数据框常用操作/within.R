mtcars   #R自带的数据集
df1 <- head(mtcars)  #截取前6行
df1 <- df1[1:3]  #截取1-3列
df1

within(df1, {
  sum = mpg + cyl + disp
  mean = (mpg + cyl + disp)/3
})
df1  #新定义的两个变量还没有添加到df1中

df1 <- within(df1, {
  sum = mpg + cyl + disp
  mean = (mpg + cyl + disp)/3
})
df1  #添加成功

