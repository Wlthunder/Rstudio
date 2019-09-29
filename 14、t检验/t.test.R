?t.test

#单样本t检验
getwd()
data <- read.csv("单样本t检验.csv")

#原假设H0：μ=5000 备择假设H1：μ!=5000
t.test(data$income, alternative = "two.sided", mu = 5000) #双侧检验，μ = 5000

#结论：p值>0.05,接受原假设,也即是说明在0.05的显著性水平下,有证据表明：
#该校该专业的毕业生的平均收入和该校毕业生的平均收入标准5000元之间没有显著差异


#两独立样本t检验
#原假设H0：μ1=μ2 备择假设H1：μ1!=μ2
#做法1
data2 <- read.csv("独立样本t检验.csv")
t.test(income~gender, data2)                     #收入根据性别来分组，需要自由度调整
t.test(income~gender, data2, var.equal = TRUE)   #假设总体方差相等

#做法2
data2 <- split(data2, data2$gender)
male <- data2$男
female <- data2$女
t.test(male$income, female$income, var.equal = TRUE)

#结论：p值>0.05,接受原假设,也即是说明在0.05的显著性水平下,有证据表明：
#该校男性毕业生的平均收入和该校女性毕业生的平均收入之间没有显著差异


#配对样本t检验
#原假设H0：μ1=μ2 备择假设H1：μ1!=μ2
data3 <- read.csv("配对样本t检验.csv")
t.test(data3$培训前销售额,data3$培训后销售额,paired=TRUE)    #paired配对

#等同于
t.test(data3$培训前销售额-data3$培训后销售额,mu=0)

#结论：P值<0.05,拒绝原假设,也即是说明在0.05的显著性水平下,有证据表明：
#这群销售人员在接受销售培训前后，他们的业绩存在显著性差异，说明该销售培训产生了显著影响,
#且该销售培训显著促进了销售业绩的提升

