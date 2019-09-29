#apply函数讲解
#1.对矩阵的行或列使用函数
m1 <- matrix(1:20, nrow = 4)
#查看矩阵m1
m1
#求矩阵m1每一行的和
apply(m1, MARGIN = 1, sum)
#求矩阵m1每一列的和
apply(m1, MARGIN = 2, sum)
#FUN也可以是自定义函数
f1 <- function(x){x*100}
apply(m1, MARGIN = 1, f1)
apply(m1, MARGIN = 2, f1)

#对数组各个维度使用函数，以三维数组为例
#定义数组各个维度的名称
xname <- c("x1", "x2")
yname <- c("y1", "y2", "y3")
zname <- c("z1", "z2", "z3", "z4")
a1 <- array(1:24, c(2,3,4), dimnames = list(xname, yname, zname))
#查看数组a1
a1
#求出a1各个维度的和
apply(a1, 1, sum)
apply(a1, 2, sum)
apply(a1, 3, sum)

#拓展：数据框dataframe也可以使用apply函数，apply函数会自动将数据转换为矩阵
#但前提是数据框中各列的数据类型都必须为数值型
#否则将转化失败，使用apply函数会出错
d1 <- c(1, 2, 3, 4)
d2 <- c(10, 20, 30, 40)
df <- data.frame(d1, d2)
df

apply(df, 1, sum)
apply(df, 2, sum)









