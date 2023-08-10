#Two independent samples of sizes 8 and 7 contained the following values:
#Sample 1 19 17 15 21 16 18 16 14
#Sample 2 15 14 15 19 15 18 16 20
#Is the difference between the sample means significant?

# Problem 3
# Variance test or F-test
sample1=c(19,17,15,21,16,18,16,14)
sample1
## [1] 19 17 15 21 16 18 16 14
sample2=c(15,14,15,19,15,18,16,20)
sample2
## [1] 15 14 15 19 15 18 16 20
# output using t-distribution
f=var.test(sample1,sample2)
f
##
## F test to compare two variances
##
## data: sample1 and sample2
## F = 1.0588, num df = 7, denom df = 7, p-value = 0.9418
## alternative hypothesis: true ratio of variances is not equal to 1
## 95 percent confidence interval:
## 0.2119805 5.2887274
## sample estimates:
## ratio of variances
## 1.058824
# test-statistic
cv=f$statistic
cv
## F
## 1.058824
#critical value
tv=qf(0.95,7,7)
tv
## [1] 3.787044
#conclusion
if(cv <= tv){print("Accept Ho")} else{print("Reject Ho")}
## [1] "Accept Ho"