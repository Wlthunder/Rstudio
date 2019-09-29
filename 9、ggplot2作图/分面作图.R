library(ggplot2)
#分面作图facet_grid()
#1.轴刻度一致
#单变量作图
ggplot(mtcars, aes(wt, mpg)) + geom_point() + facet_grid(vs~.)
ggplot(mtcars, aes(wt, mpg)) + geom_point() + facet_grid(.~vs)
#双变量作图
ggplot(mtcars, aes(wt, mpg)) + geom_point() + facet_grid(am~vs)

#轴刻度不一致
#不同纵轴刻度
ggplot(mtcars, aes(wt, mpg)) + geom_point() + facet_grid(vs~., scales = "free_y")
ggplot(mtcars, aes(wt, mpg)) + geom_point() + facet_grid(.~vs, scales = "free_x")
ggplot(mtcars, aes(wt, mpg)) + geom_point() + facet_grid(vs~., scales = "free")
ggplot(mtcars, aes(wt, mpg)) + geom_point() + facet_grid(.~vs, scales = "free")
#不同横轴刻度



