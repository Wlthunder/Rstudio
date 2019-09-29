mtcars

#筛选出mpg大于等于20 且 vs等于0 的数据集，返回所有列
subset(mtcars, mpg>=20 & vs==0)
#返回前三列
subset(mtcars, mpg>=20 & vs==0, 1:3)
#满足cyl条件
subset(mtcars, mpg>=20 & vs==0, cyl)
