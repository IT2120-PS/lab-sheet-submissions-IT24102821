setwd("C:\\nadil-dulnidu\\IT24102821Lab07")

#question 01
min_time <- 0
max_time <- 40
lower <- 10
upper <- 25
prob <- punif(upper, min_time, max_time) - punif(lower, min_time,max_time)
prob

#question 02
lambda <- 1/3
t <- 2
prob <- pexp(t, rate = lambda)
prob

#question 03 

#part i
mean_iq <- 100
sd_iq <- 15
prob_above_130 <- 1 - pnorm(130, mean = mean_iq,sd = sd_iq)
prob_above_130

#part ii
iq_95th <-pnorm(0.95, mean = mean_iq , sd = sd_iq)
iq_95th