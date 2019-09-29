library(ggplot2)
mtcars

#ÐÎ×´
ggplot(mtcars, aes(wt, mpg, color = factor(vs))) + geom_point()
ggplot(mtcars, aes(wt, mpg, color = factor(vs))) + geom_point(shape = 1)
ggplot(mtcars, aes(wt, mpg, color = factor(vs))) + geom_point(shape = 2)
ggplot(mtcars, aes(wt, mpg, color = factor(vs))) + geom_point(shape = 2, size = 3)
ggplot(mtcars, aes(wt, mpg, color = factor(vs))) + geom_point(shape = 4, size = 5)

#ÑÕÉ«
ggplot(mtcars, aes(wt, mpg)) + geom_line(color = "blue")
ggplot(mtcars, aes(wt, color = factor(vs))) + geom_density()#±ß½ç
ggplot(mtcars, aes(wt, fill = factor(vs))) + geom_density()#Ìî³ä

#ÎÄ±¾×¢ÊÍ
ggplot(mtcars, aes(wt, mpg, color = factor(vs))) + geom_point() + 
  annotate("text", x = 4, y = 20, label = "¹þ¹þ¹þ")

#±êÌâ
ggplot(mtcars, aes(wt, mpg, color = factor(vs))) + geom_point() + 
  annotate("text", x = 4, y = 20, label = "¹þ¹þ¹þ") +
  labs(title = "HELLO", x = "WT", y = "MPG")

ggplot(mtcars, aes(wt, mpg, color = factor(vs))) + geom_point() + 
  annotate("text", x = 4, y = 20, label = "¹þ¹þ¹þ") +
  labs(title = "HELLO", x = "WT", y = "MPG") +
  theme(plot.title = element_text(hjust = 0.5))

#Ìí¼ÓÏßÌõ
ggplot(mtcars, aes(wt, mpg, color = factor(vs))) + geom_point() + 
  annotate("text", x = 4, y = 20, label = "¹þ¹þ¹þ") +
  labs(title = "HELLO", x = "WT", y = "MPG") + 
  geom_vline(xintercept = 3) + geom_hline(yintercept = 25)

#×ª»»xÖáºÍyÖá
ggplot(mtcars, aes(wt, mpg, color = factor(vs))) + geom_point() + 
  annotate("text", x = 4, y = 20, label = "¹þ¹þ¹þ") +
  labs(title = "HELLO", x = "WT", y = "MPG") + 
  geom_vline(xintercept = 3) + geom_hline(yintercept = 25) + 
  coord_flip()

#µ÷Õûx y ¿Ì¶È·¶Î§
ggplot(mtcars, aes(wt, mpg, color = factor(vs))) + geom_point() + 
  annotate("text", x = 4, y = 20, label = "¹þ¹þ¹þ") +
  labs(title = "HELLO", x = "WT", y = "MPG") + 
  geom_vline(xintercept = 3) + geom_hline(yintercept = 25) +
  xlim(2, 4) + ylim(15, 25)

#ÐÞ¸ÄÖáÉÏµÄÖµ
ggplot(mtcars, aes(wt, mpg, color = factor(vs))) + geom_point() + 
  annotate("text", x = 4, y = 20, label = "¹þ¹þ¹þ") +
  labs(title = "HELLO", x = "WT", y = "MPG") + 
  geom_vline(xintercept = 3) + geom_hline(yintercept = 25) +
  scale_x_continuous(breaks = c(2.5, 3, 3.5), labels = c("a", "b", "c")) + 
  scale_y_continuous(breaks = c(20, 25, 30), labels = c("À²À²", "à½à½", "ºÙºÙ"))

  
  
  
  
  
  















       