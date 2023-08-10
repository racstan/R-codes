# Problem 1
#Two independent samples of sizes 8 and 7 contained the following values:
#Sample 1 19 17 15 21 16 18 16 14
#Sample 2 15 14 15 19 15 18 16 20
#Is the difference between the sample means significant?
# input the data
sample1=c(19,17,15,21,16,18,16,14)
sample1
## [1] 19 17 15 21 16 18 16 14
sample2=c(15,14,15,19,15,18,16,20)
sample2
## [1] 15 14 15 19 15 18 16 20
# output using t-distribution
t=t.test(sample1,sample2)
t
##
## Welch Two Sample t-test
##
## data: sample1 and sample2
## t = 0.44721, df = 13.989, p-value = 0.6616
## alternative hypothesis: true difference in means is not equal to 0
## 95 percent confidence interval:
## -1.898128 2.898128
## sample estimates:
## mean of x mean of y
## 17.0 16.5
# test-statistic
cv=t$statistic
cv
## t
## 0.4472136
#critical value
tv=qt(0.975,14)
tv
## [1] 2.144787
#conclusion
if(cv <= tv){print("Accept Ho")} else{print("Reject Ho")}
## [1] "Accept Ho"