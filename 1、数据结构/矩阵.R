n1 <- c("a", "b", "c", "d", "e")
n2 <- c("A", "B", "C", "D")
m1 <- matrix(1:20, nrow=5, ncol=4, byrow=TRUE, dimnames = list(n1, n2))
m1

m1[2, 4]
m1[2, c(2,3)]
m1[3,]
m1[,4]
