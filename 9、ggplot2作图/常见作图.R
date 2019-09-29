#下载和安装ggplot2
install.packages("ggplot2")
library(ggplot2)
#数据集mtcars
mtcars
#散点图
plot(mtcars$mpg, mtcars$wt)
ggplot(mtcars, aes(mpg, wt)) + geom_point()

#折线图
ggplot(mtcars, aes(mpg, wt)) + geom_line()
ggplot(mtcars, aes(mpg, wt)) + geom_line() + geom_point()

#柱状图
ggplot(mtcars, aes(cyl)) + geom_bar()
table(mtcars$cyl)
class(mtcars$cyl)
ggplot(mtcars, aes(factor(cyl))) + geom_bar()

ggplot(mtcars, aes(factor(cyl), fill = factor(am))) + geom_bar()
ggplot(mtcars, aes(factor(cyl), fill = factor(am))) + geom_bar(position = "dodge")
ggplot(mtcars, aes(factor(cyl), fill = factor(am))) + geom_bar(position = "fill")

#直方图
ggplot(mtcars, aes(mpg)) + geom_histogram()

#密度图
ggplot(mtcars, aes(mpg)) + geom_density()
ggplot(mtcars, aes(mpg, color = factor(vs))) + geom_density()#边界
ggplot(mtcars, aes(mpg, fill = factor(vs))) + geom_density()#填充
ggplot(mtcars, aes(mpg, fill = factor(vs))) + geom_density(alpha = 0.6)

#箱线图
ggplot(mtcars, aes(factor(vs), mpg)) + geom_boxplot()






