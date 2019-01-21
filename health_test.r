# health grade - 1: excellent, 2: good, 3: fair, 4: poor
# gender - 1: female; 0: male
# hospital - hospitalized in last 6 months 1: yes, 0: no
# observation - total number of observation

health <- c(1, 2, 3, 4, 1, 2, 3, 4)
gender <- c(0, 0, 0, 0, 1, 1, 1, 1)
hospital <- c(25, 38, 10, 4, 25, 59, 19, 3)
observation <- c(530, 514, 81, 9, 381, 582, 93, 10)


# employ.data <- data.frame(employee, salary, startdate)
test.data <- data.frame(gender, health, hospital, observation)


HOSPy <- hospital
HOSPn <- observation - hospital
health2 <- c(0, 1, 0, 0, 0, 1, 0, 0)
health3 <- c(0, 0, 1, 0, 0, 0, 1, 0)
health4 <- c(0, 0, 0, 1, 0, 0, 0, 1)
gedata <- data.frame(gender, health2, health3, health4) 


xtabs (~hospital+health, data=test.data)

# regression on hospy/hospn???
LOGREG <- glm(cbind(HOSPy, HOSPn)~gender+health2+health3+health4+gender:health2+gender:health3+gender:health4, family=binomial, data=gedata)

# add more 
LOGREG2 <- glm(cbind(HOSPy, HOSPn)~gender+health2+health3+health4, family=binomial, data=gedata)

LOGREG3 <- glm(cbind(HOSPy, HOSPn)~gender+health, family=binomial, data=gedata)

LOGREG4 <- glm(cbind(HOSPy, HOSPn)~gender+health+gender:health, family=binomial, data=gedata)



# edit after add





