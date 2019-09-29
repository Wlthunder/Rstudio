install.packages("ggpubr")
library(ggpubr)

# 加载数据一
data("mtcars")
df <- mtcars
# 重点介绍数据中的四个属性
#wt：重量
#mpg：汽车的油耗
#cyl：汽车的气缸数
#qsec：加速时间

# 加载数据二
data("iris")
#Sepal.Length Sepal.Width Petal.LengthPetal.Width Species
#花萼长度 花萼宽度 花瓣长度 花瓣宽度 属种


ggscatter(df, x = "wt", y = "mpg",
          add = "reg.line", # Add regression line
          conf.int = TRUE, # Add confidence interval
          add.params = list(color = "blue",ill = "lightgray"))
+ stat_cor(method = "spearman", label.x = 3, label.y = 30)
# stat_cor：Add correlation coefficient



df$cyl = as.factor(df$cyl) #更改数据类型
ggscatter(df, x = "wt", y = "mpg",
          add = "reg.line", # Add regression line
          conf.int = TRUE, # Add confidence interval
          color = "cyl", palette = "jco",
          # Color by groups "cyl"
          shape = "cyl"
          # Change point shape by groups "cyl"            
         ) + stat_cor(method = "spearman", aes(color = cyl), label.x = 3)
# stat_cor：Add correlation coefficient



ggscatter(df, x = "wt", y = "mpg", add = "reg.line",
          # Add regression line color = "cyl"
          palette = "jco", # Color by groups "cyl"
          shape = "cyl",
          # Change point shape by groups "cyl"
          fullrange = TRUE,
          # Extending the regression line
          rug = TRUE # Add marginal rug
         )+ stat_cor(aes(color = cyl), label.x = 3)
# stat_cor：Add correlation coefficient



ggscatter(df, x = "wt", y = "mpg", color = "cyl",
          palette = "jco", shape = "cyl", ellipse = TRUE)



ggscatter(df, x = "wt", y = "mpg", color ="cyl", palette = "jco",
          shape = "cyl", ellipse = TRUE, ellipse.type = "convex")



sp <- ggscatter(iris, x = "Sepal.Length", y = "Sepal.Width", color = "lightgray")
sp + geom_density_2d() # Gradient color
sp + stat_density_2d(aes(fill = ..level..), geom = "polygon")
# Change gradient color: custom
sp + stat_density_2d(aes(fill = ..level..), geom = "polygon")+
  gradient_fill(c("white", "steelblue"))
# Change the gradient color
sp + stat_density_2d(aes(fill = ..level..),
                     geom = "polygon") + gradient_fill("YlOrRd")
# RColorBrewer palette



data("ToothGrowth")
p <- ggboxplot(ToothGrowth, x = "supp", y = "len", color = "supp", palette = "jco",
               add = "jitter")
p + stat_compare_means(method = " wilcox.test")
# stat_compare_mean():自动添加p-value、显著性标记到ggplot图中



compare_means(len ~ dose, data = ToothGrowth)
## # A tibble: 3 x 8
## .y. group1 group2 p p.adj p.format p.signif method
##
## 1 len 0.5 1 7.02e-06 1.40e-05 7.0e-06 **** Wilcoxon
## 2 len 0.5 2 8.41e-08 2.52e-07 8.4e-08 **** Wilcoxon
## 3 len 1 2 1.77e-04 1.77e-04 0.00018 *** Wilcoxon
# Visualize: Specify the comparisons you want
my_comparisons <- list( c("0.5", "1"), c("1", "2"), c("0.5", "2") )
ggboxplot(ToothGrowth, x = "dose", y = "len",
          color = "dose", palette = "jco",add = "jitter")+
  stat_compare_means(comparisons = my_comparisons)+
# Add pairwise comparisons p-value
  stat_compare_means(label.y = 50)
# Add global p-value



ggviolin(ToothGrowth, x = "dose", y = "len", fill = "dose",
         palette = c("#00AFBB", "#E7B800", "#FC4E07"), add = "boxplot",
         add.params = list(fill = "white"))+
  stat_compare_means(comparisons = my_comparisons, label = "p.signif")+
# Add significance levels
  stat_compare_means(label.y = 50)
# Add global the p-value































