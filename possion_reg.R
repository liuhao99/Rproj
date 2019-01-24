
# 3 hospitals 
hospital <- c(1, 1, 2, 2, 3, 3)
# 1 chemo, 0 control
treatment <- c(1, 0, 1, 0, 1, 0)

num_death <- c(1, 31, 13, 27, 23, 41)
num_obs <- c(17, 150, 36, 110, 51, 127)

test.data <- data.frame(hospital, treatment, num_death, num_obs)

res <- glm(cbind (num_death, num_obs))~hospital+treatment+hospital:treatment, family = poission, data=test.data)
summary (res)
