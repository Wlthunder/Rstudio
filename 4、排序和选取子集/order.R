mtcars

mtcars[order(mtcars$mpg), ]#按mpg进行升序排序，返回所有列

mtcars[order(mtcars$mpg), 1:3]#返回1-3列

mtcars[order(mtcars$mpg), 1]#只返回第一列

mtcars[order(mtcars$mpg, mtcars$cyl),]#次要条件cyl，在mpg相同时使用

mtcars[order(-mtcars$mpg), ]#降序排列

