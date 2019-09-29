age <- c(22, 23, 25, 30)
gender <- c("male", "female", "male", "female")
grade <- c(80, 95, 75, 100)

df1 <- data.frame(age, gender, grade)
df1

df1 [1,]#访问第一行的元素
df1 [,2]
df1 [,1:2]#访问1-2列
df1 [1:3,]#访问1-3行
df1 [-1,]#除了第一行以外的所有元素

df1 ["age"]#访问年龄列
df1 [ c("age", "grade") ]#访问年龄列和成绩列

df1 $age
df1 $gender
