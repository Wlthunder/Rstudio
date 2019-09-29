
                 #分层抽样
#1.导入数据
#专业1 金融  专业2  财务管理  专业3  外语
data <- read.csv("data.csv")
library(sampling)
data
#2.通过strata得到抽样序号
?strata
strata_data <- strata(data, stratanames = "专业", size = c(20, 40, 60), method = "srswor")
strata_data
#3.根据序号提取数据集中相应数据，即可得到样本数据
sampledata2 <- data[strata_data$ID_unit, ]
