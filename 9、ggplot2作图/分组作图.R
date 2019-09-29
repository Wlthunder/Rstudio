library(ggplot2)
mtcars
#wt作为x轴，mpg作为y轴，qsec作为染色标准（qesc是连续性变量）
ggplot(mtcars, aes(wt, mpg, color = qsec)) + geom_point()
#aes的美学特征是按照 向量 的顺序来指定的

ggplot(mtcars, aes(wt, mpg, color = factor(vs))) + geom_point()
#vs是分类变量，更加容易区分

#参数在aes内和外面的区别
ggplot(mtcars, aes(wt, mpg)) + geom_point(color = "blue")
ggplot(mtcars, aes(wt, mpg, color = "blue")) + geom_point()#在aes中blue作为一个变量存在进行划分，本身无意义
ggplot(mtcars, aes(wt, mpg, color = "哈哈哈")) + geom_point()

ggplot(mtcars, aes(wt, mpg, color = factor(vs))) + geom_point()#用vs来分组，vs有多少个值就分多少种颜色

