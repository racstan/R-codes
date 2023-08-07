#Suppose the mean weight of King Penguins found in an Antarctic colony last year was 15.4 kg.
#In a sample of 35 penguins same time this year in the same colony, the mean penguin weight is
#14.6 kg. Assume the population standard deviation is 2.5 kg. At 0 .05 significance level, can we
#reject the null hypothesis that the mean penguin weight does not differ from last year?

# Input the sample mean
xbar=14.6
xbar
## [1] 14.6
# Input the population mean
mu0=15.4
mu0
n
X
z

 

## [1] 15.4
# Input the standard deviation
sigma=2.5
sigma
## [1] 2.5
# Input the sample size
n=35
n
## [1] 35
# Test Statistic
z=(xbar-mu0)/(sigma/sqrt(n))
z
## [1] -1.893146
# Level of significance
alpha=0.05
alpha
## [1] 0.05
# Two-tailed critical value
zhalfalpha=qnorm(1-(alpha/2))
zhalfalpha
## [1] 1.959964
c(-zhalfalpha,zhalfalpha)
## [1] -1.959964 1.959964
# To find p-value
pval=2*pnorm(z)
pval
## [1] 0.05833852
# conclusion
if(pval>alpha){print("Accept Null hypothesis")} else{print("Reject Null
hypothesis")}
## [1] "Accept Null hypothesis"