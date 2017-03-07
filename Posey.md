# Buster Posey

### Reading the Data

```r
posey <- read.csv('./posey.csv')

head(posey)
```

```r
  Year wRC.   G   AVG  AB  R   H X2B X3B HR RBI SB SO
1 2009  -51   7 0.118  17  1   2   0   0  0   0  0  4
2 2010  134 108 0.305 406 58 124  23   2 18  67  0 55
3 2011  116  45 0.284 162 17  46   5   0  4  21  3 30
4 2012  163 148 0.336 530 78 178  39   1 24 103  1 96
5 2013  133 148 0.294 520 61 153  34   1 15  72  1 70
```

### Checking for any Null or NA Values

```r
any(is.na(posey))
```

### Presenting the Mean, Median, and Range of Vector

```r
rbi = posey$RBI
```

#### Mean

```r
mean(rbi)
```
```r
[1] 52.6
```


### Median

```r
median(rbi)
```

```r
[1] 67
```


#### Range of the Vector

```r
max(rbi) - min(rbi)
```

```r
[1] 103
```

```r
c(0,21,67,72,103)
```

```r
[1]   0  21  67  72 103
```

```r
length(c(0,21,67,72,103))
```

```r
[1] 5
```

### Regression Analysis


```r
regr <- lm(wRC. ~ R + H + rbi, posey)
print(regr)
```

```r
Call:
lm(formula = wRC. ~ R + H + rbi, data = posey)

Coefficients:
(Intercept)            R            H          rbi  
   -0.31380     -1.38072      1.62502     -0.09111  
```


```r
summary(regr)
```


```r
Call:
lm(formula = wRC. ~ R + H + rbi, data = posey)

Residuals:
     1      2      3      4      5 
-52.56  19.00  66.95  -8.86 -24.53 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)
(Intercept) -0.31380   77.93368  -0.004    0.997
R           -1.38072   18.39135  -0.075    0.952
H            1.62502    5.43062   0.299    0.815
rbi         -0.09111   10.76176  -0.008    0.995

Residual standard error: 91.02 on 1 degrees of freedom
Multiple R-squared:  0.7169,	Adjusted R-squared:  -0.1324 
F-statistic: 0.8441 on 3 and 1 DF,  p-value: 0.644
```