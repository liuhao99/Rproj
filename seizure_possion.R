# seizure, possion 

# data seizure in one day, first seizure happens younger than 6 year old, doze level 0~5 
agel60 <- c(3, 0, 3, 3, 2, 5, 4, 3, 2, 1)
agel61 <- c(1, 3, 1, 2, 2, 4, 2, 1, 2, 5)
agel62 <- c(1, 3, 1, 2, 2, 1, 1, 4, 2, 2)
agel63 <- c(3, 0, 2, 3, 1, 3, 1, 1, 0, 1)
agel64 <- c(1, 0, 0, 1, 1, 0, 0, 0, 1, 2)
# data seizure in one day, first seizure happens older than 6 year old, doze level 0~5 
agem60 <- c(1, 3, 4, 0, 0, 2, 0, 1, 1, 0)
agem61 <- c(3, 2, 3, 1, 3, 1, 0, 0, 1, 0)
agem62 <- c(0, 3, 1, 0, 0, 0, 1, 1, 2, 1)
agem63 <- c(0, 0, 0, 0, 0, 2, 1, 0, 0, 1)
agem64 <- c(0, 3, 1, 0, 1, 1, 1, 1, 1, 0)

aged <- data.frame(agel60, agel61, agel62, agel63, agel64, agem60, agem61, agem62, agem63, agem64)

colSums(aged)



