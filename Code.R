library("readxl")
library("ggplot2")
p <- read_excel("data.xlsx")
p


# Overview of the Descriptive Statistics
summary(p)

# Applying Statistical Methods

## 1. Chi-square test

# Total calls refers to both inbound and outbound calls from/to Mom and Dad
p$`total calls`
p$`total calls` -> x
x
# number of observations = 20
length(x)
# Made 29 calls within 20 days time frame 
sum(x)
mean (x)
# On average 1.45 calls (round up to 2) were made during this period
# Verifying the average calls 
29/20
# Distribution of "total calls" occurred over the 20-day period. 
table(x) -> o
o
# Verifying that the dataset contains 20 observations:
sum(o)

plot(o, xlab = "Total Calls", ylab = "Frequency", main = "Frequency of Total Calls")

# Thus,on 6 days out of 20 days, there were no calls made or received from parents,4 days with 1, 6 days with 2 calls, 3 days with 3 calls and 1 day with 4 calls.
lambda <- mean(x)
lambda
probs <- dpois(0:3,1.45)
probs

# The result showed that the probability of getting 0 calls on any given day is ~23.46% , 1 calls is ~34.01% and so on. Furthermore, The remaining probability will then represent the likelihood of getting 5 calls

1-sum(dpois(0:3,lambda=mean(x)))
probs <- c(dpois(0:3, lambda=mean(x)),ppois(3,lambda=mean(x),lower.tail=FALSE))
probs
sum(probs)

# The probability is summed to 1 which indicates that all the possible outcomes in the distribution have been covered. 

# Lets apply chi-square test goodness-of-fit-test
e <- probs*20
e
# The expected result indicated that there I would expect ~5days with 0 calls, ~7 days with 1 calls, etc. 
```
The chi-square test is as follow:
  ```{r}
B <- sum((o-e)^2/e)
B
1-pchisq(B,df=5-1)
