#大数据下的随机抽样
#数据源：搜狗实验室的用户查询日志
#读取数据 file 函数
DATA <- file("SogouQ.reduced", open = "r")  #只读方式打开
#讲解：readLines读取一行（第一次运行即 读取一行）
#数据含义：访问时间/用户ID/查询词/URL在返回结果中的排名/用户名点击的顺序号/用户点击的URL
line <- readLines(DATA, n = 1)             #每次读取一行
line
#定义参数
#抽样比例
p <- 0.01
#遍历的总行数
count_row <- 0
#遍历的抽样数据行数
count_p <- 0
#为获取抽样数据定义i和df
i <- 0
df1 <- data.frame(c(0))                   #将抽样数据放到数据框中
#开始while循环遍历搜狗文件中所有数据进行抽样
while (length(line) != 0) 
{
  count_row <- count_row + 1              #数据行数 + 1
  c <- runif(1, min = 0, max = 1)         #在0~1生成一个随机数
  if (c < p)                              #合法的抽样比例
  {
    i <- i + 1                            #为了给空的数据框添加一行读取的数据，
    print (line)                          #看到第i行的数据
    df1[i,] <- line                       #将读取的数据添加到第i行
    count_p <- count_p + 1                #抽样数据的行数 + 1
  }
  line <- readLines(DATA, n = 1)          #每次只能读一句，通过循环读取下一行
}
count_p
count_row
count_p / count_row


#大数据下的分层抽样
#讲解grep
grep("a", "abc")                          #出现在字符串中为 1，否则为 0
grep("d", "abc")
length(grep("a", "abc"))                  
length(grep("d", "abc"))
#读取数据 file 函数
DATA2 <- file("SogouQ.reduced", open = "r")
line <- readLines(DATA2, n = 1)
#建立一系列参数
p <- 0.01
keyword <- "书"
keycount <- 0  #所有含有关键词的数据的总行数
pcount <- 0  #在所有含有关键词的数据 中 抽样的总行数
i <- 0
df2 <- data.frame(c(0))

#开始while
while (length(line) != 0) 
{
  c <- runif(1, min = 0, max = 1)
  if (length(grep(keyword, line)) != 0) #如果 关键词 不在读取的数据中,直接读下一行数据
  {                                     #如果 关键词 在读取的数据中，执行 if 中语句
    keycount <- keycount + 1            #含有关键词的行数每符合一次 就增加 1 次
    if (c < p)                          #和上面一样
    {
      pcount <- pcount + 1
      i <- i + 1
      print(line)
      df2[i,] <- line
    }
  }
  line <- readLines(DATA2, n = 1)
}
keycount
pcount
pcount / keycount



