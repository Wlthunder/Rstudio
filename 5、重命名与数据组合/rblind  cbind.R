mtcars
df1 <- mtcars[1:10,]
df2 <- mtcars[11:20,]
df <- rbind(df1, df2)
df

df3 <- mtcars[,1:3]
df4 <- mtcars[,4:6]
df5 <- cbind(df3, df4)
df5
