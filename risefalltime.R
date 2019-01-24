getwd()
setwd("C:/Users/a0866568/Documents/DS16F95/sn65c1168")
r_fall = read.csv("sn65c1168_r_fall_Ch1.csv", header=FALSE)
r_fall2 = r_fall[,c(4,5)]
names(r_fall2) <- c("Time", "Voltage")
write.csv(r_fall2, 'r_fall2.csv')
