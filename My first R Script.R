###############################################################
# Filename: My first R Script
# Author: 
# Date: March 2, 2020
# Version: Version 1
# Purpose: Basic Introduction to R
###############################################################

# 2. R Basics

3 + 1

((3+1)^2)/(5*0.5)

ten <- 10
ten/5 

ten = 10
ten/5

coffee_pastweek <- c(2,3,2,1,4,1,1)

coffee_pastweek

coffee_pastweek[1]

sqrt(ten)

sum(coffee_pastweek)

sum(coffee_pastweek,1)

mean(coffee_pastweek)

sd(coffee_pastweek)

range(coffee_pastweek)

coffee_pastweek > 1

coffee_pastweek == 2

9.99 == 10

pi

1/0

-1/0

0/0

# 3. Importing, viewing and describing and saving datasets in R

dat <- esoph

View(dat)

nrow(dat)

ncol(dat)

dim(dat)

colnames(dat)

?esoph

summary(dat)

summary(dat$agegp)

table(dat$agegp)

class(dat$agegp)

class(dat$ncases)

is.factor(dat$agegp)

is.ordered(dat$agegp)

dat$ratio <- (dat$ncases)/(dat$ncontrols)

dim(dat)

colnames(dat)

install.packages("readr")
library(readr)
write_csv(dat,"MyH/MyFolder/mydat.csv")

# 4. t-Test, Chi Squared test and Linear Regression in R

t.test(dat$ratio , mu = 0.5)

chisq.test(dat$tobgp , dat$alcgp)

my_linear_reg <- lm(ratio ~ unclass(agegp), data = dat)

summary(my_linear_reg)

# 5. Basic Visualization

plot(dat$ratio)

hist(dat$ratio)

plot(dat$agegp, dat$ratio)

plot(dat$agegp, dat$ratio, main = "Ratio of cases:controls by Age Group", xlab = "Age Group", ylab = "cases:controls")

?plot

























