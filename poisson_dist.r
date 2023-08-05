#Poisson Distribution
# number of trails
m=20
m
## [1] 20
# probability of success
ps=0.02
# poisson parameter
lambda=m*ps
lambda
## [1] 0.4
#at least 2 defectives
p1=sum(dpois(2:m,lambda))
p1
## [1] 0.06155194
# (i) number of boxes containing at least 2 defectives
round(1000*p1)
## [1] 62
#exactly 2 defectives
p2=dpois(2,lambda)
p2
## [1] 0.0536256
# (ii) number of boxes containing exactly 2 defectives
round(1000*p2)
## [1] 54
#at most 2 defectives
p3=sum(dpois(0:2, lambda))
p3
## [1] 0.9920737
# (iii) number of boxes containing at most 2 defectives
round(1000*p3)
## [1] 992
# (iv) plot the distribution
x1=0:m
px1=dpois(x1,lambda)
plot(x1,px1,type="h",xlab="values of x",ylab="Probability distribution of
x",main="Poisson distribution")
#(v) E(x)
Ex1=weighted.mean(x1,px1)
Ex1
## [1] 0.4
# (vi) variance of x
Varx1=weighted.mean(x1*x1,px1)-(weighted.mean(x1 ,px1))^2
Varx1
## [1] 0.4
