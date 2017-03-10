# Buster Posey


### Changing the Working Directory

```r
setwd('./Introduction to Data Science UCB/Week 6')
```

### Reading the Data

```r
posey <- read.csv('./posey.csv')
```

```r
head(posey)
```

### Checking for any Null or NA Values

```r
any(is.na(posey))
```

### Presenting the Mean, Median, and Range of Vector

#### Range of the Vector

```r
rbi <- c(0,21,67,72,103)
rbi
```

```r
range(rbi)
```

#### Mean

```r
mean(rbi)
```

### Median

```r
median(rbi)
```

### Regression Analysis


```r
regr <- lm(wRC. ~ R + H + rbi, posey)
print(regr)
```

```r
summary(regr)
```
