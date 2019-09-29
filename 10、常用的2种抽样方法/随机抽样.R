#随机抽样
#1.导入数据
#专业1 金融  专业2  财务管理  专业3  外语
getwd()
data <- read.csv("data.csv")
data <- data[order(data$专业, data$ID),]

#2.对数据集的序号进行抽样
index <- sample(1:nrow(data), 60)
index
#3.根据序号提取数据集中相应数据，即可得到样本数据
sampledata <- data[index,]
sampledata
