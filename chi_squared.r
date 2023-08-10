# Problem : 1
#Five coins are tossed 256 times. The number of heads observed by binomial distribution is given below.
#Examine if the coins are unbiased by employing chi-square goodness of fit.
#No. of heads 0 1 2 3 4 5
#Frequency 5 35 75 84 45 12

# Goodness of fit
# Number of coins
n=5
n
## [1] 5
# level of significance
alpha=0.05
alpha
## [1] 0.05
N=256 # Total number of tosses
N
## [1] 256
P = 0.5 # probability of getting head
P
## [1] 0.5
x = c(0:n);x
## [1] 0 1 2 3 4 5
obf = c(5,35,75,84,45,12)# observed frequencies
obf
## [1] 5 35 75 84 45 12
exf = (dbinom(x,n,P)*256) # expected frequencies
exf
## [1] 8 40 80 80 40 8
# check the condition if the observed and expected frequencies sum are equal
sum(obf)
## [1] 256
sum(exf)
## [1] 256
# output using Chisq-distribution
chisq<-sum((obf-exf)^2/exf)
cv = chisq;cv
## [1] 4.8875
# critical value using Chisq-distribution
tv = qchisq(1-alpha,n);tv
## [1] 11.0705
# Hypothesis conclusion
if(cv <= tv){print("Accept H0/Fit is good")} else{print("Reject H0/Fit is not
good")}
## [1] "Accept H0/Fit is good"