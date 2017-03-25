# Buster Posey


### Changing the Working Directory


setwd('./Introduction to Data Science UCB/Week 6')


### Reading the Data

posey <- read.csv('./posey.csv')
head(posey)

### Checking for any Null or NA Values

any(is.na(posey))

### Presenting the Mean, Median, and Range of Vector

#### Range of the Vector

rbi <- c(0,21,67,72,103)
rbi
range(rbi)

#### Mean

mean(rbi)

### Median

median(rbi)


### Regression Analysis

regr <- lm(wRC. ~ R + H + RBI, posey)
print(regr)
summary(regr)

