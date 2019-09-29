mtcars   #R自带的数据集
df1 <- head(mtcars)  #截取前6行
df1 <- df1[1:3]  #截取1-3列
df1

df1$mpg
df1$cyl

attach(df1)
mpg
cyl
detach(df1)  #解除绑定

df1$mpg + df1$cyl + df1$disp
with(df1, {mpg + cyl + disp})
