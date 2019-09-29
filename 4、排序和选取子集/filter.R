mtcars

library(dplyr)

filter(mtcars, mpg>=20, vs==0)#filter中 , 相当于并且

#满足mpg>=20 或 vs等于0
filter(mtcars, mpg>=20 | vs==0)
