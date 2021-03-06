library(ggplot2)
mtcars

#��״
ggplot(mtcars, aes(wt, mpg, color = factor(vs))) + geom_point()
ggplot(mtcars, aes(wt, mpg, color = factor(vs))) + geom_point(shape = 1)
ggplot(mtcars, aes(wt, mpg, color = factor(vs))) + geom_point(shape = 2)
ggplot(mtcars, aes(wt, mpg, color = factor(vs))) + geom_point(shape = 2, size = 3)
ggplot(mtcars, aes(wt, mpg, color = factor(vs))) + geom_point(shape = 4, size = 5)

#��ɫ
ggplot(mtcars, aes(wt, mpg)) + geom_line(color = "blue")
ggplot(mtcars, aes(wt, color = factor(vs))) + geom_density()#�߽�
ggplot(mtcars, aes(wt, fill = factor(vs))) + geom_density()#���

#�ı�ע��
ggplot(mtcars, aes(wt, mpg, color = factor(vs))) + geom_point() + 
  annotate("text", x = 4, y = 20, label = "������")

#����
ggplot(mtcars, aes(wt, mpg, color = factor(vs))) + geom_point() + 
  annotate("text", x = 4, y = 20, label = "������") +
  labs(title = "HELLO", x = "WT", y = "MPG")

ggplot(mtcars, aes(wt, mpg, color = factor(vs))) + geom_point() + 
  annotate("text", x = 4, y = 20, label = "������") +
  labs(title = "HELLO", x = "WT", y = "MPG") +
  theme(plot.title = element_text(hjust = 0.5))

#��������
ggplot(mtcars, aes(wt, mpg, color = factor(vs))) + geom_point() + 
  annotate("text", x = 4, y = 20, label = "������") +
  labs(title = "HELLO", x = "WT", y = "MPG") + 
  geom_vline(xintercept = 3) + geom_hline(yintercept = 25)

#ת��x���y��
ggplot(mtcars, aes(wt, mpg, color = factor(vs))) + geom_point() + 
  annotate("text", x = 4, y = 20, label = "������") +
  labs(title = "HELLO", x = "WT", y = "MPG") + 
  geom_vline(xintercept = 3) + geom_hline(yintercept = 25) + 
  coord_flip()

#����x y �̶ȷ�Χ
ggplot(mtcars, aes(wt, mpg, color = factor(vs))) + geom_point() + 
  annotate("text", x = 4, y = 20, label = "������") +
  labs(title = "HELLO", x = "WT", y = "MPG") + 
  geom_vline(xintercept = 3) + geom_hline(yintercept = 25) +
  xlim(2, 4) + ylim(15, 25)

#�޸����ϵ�ֵ
ggplot(mtcars, aes(wt, mpg, color = factor(vs))) + geom_point() + 
  annotate("text", x = 4, y = 20, label = "������") +
  labs(title = "HELLO", x = "WT", y = "MPG") + 
  geom_vline(xintercept = 3) + geom_hline(yintercept = 25) +
  scale_x_continuous(breaks = c(2.5, 3, 3.5), labels = c("a", "b", "c")) + 
  scale_y_continuous(breaks = c(20, 25, 30), labels = c("����", "��", "�ٺ�"))

  
  
  
  
  
  















       