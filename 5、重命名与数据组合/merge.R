setwd("C:/Users/wxdn/Desktop/R")
getwd()
df1 <- read.csv("数据集1.csv")
df2 <- read.csv("数据集2.csv")
df1
df2

#公有的变量名称不一样时的做法
df <- merge(df1, df2, by.x = "ID1", by.y = "ID2")
df

#公有的变量名称一样时的做法
names(df1)[1] <- "ID"
names(df2)[1] <- "ID"
df1
df2
df <- merge(df1, df2, by = "ID")
df

#1.df1的数据全部保留，df2的数据只保留与df1匹配的数据，其余都排除掉，以NA呈现
df <- merge(df1, df2, by = "ID", all.x = TRUE)
df

#2.df2的数据全部保留，df1的数据只保留与df1匹配的数据，其余都排除掉，以NA呈现
df <- merge(df1, df2, by = "ID", all.y = TRUE)
df

#3.df1 df2的数据全保留，无法匹配的项以NA呈现
df <- merge(df1, df2, by = "ID", all = TRUE)
df





