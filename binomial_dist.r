#Four coins are tossed simultaneously. What is the probability of getting (i) 2 heads (ii) atleast 2 heads
#(iii) atmost 2 heads (iv) Expectation of x (v) Variance of x (vi) Visualize the probability distribution

# number of trials
n=4
n
## [1] 4
#probability of success
p=0.02
p
## [1] 0.02
# (i) probability of getting exactly 2 heads
dbinom(2,n,p)
## [1] 0.00230496
# (ii) probability of getting atleast 2 heads
sum(dbinom(2:4,n,p))
## [1] 0.00233648
#or
1-pbinom(1,n,p)
## [1] 0.00233648
# (iii) probability of getting atmost 2 heads
sum(dbinom(0:2,n,p))
## [1] 0.9999685
# or
pbinom(2,n,p)
## [1] 0.9999685
#(iv) Expectation of x
x=0:n
px=dbinom(x,n,p)
Ex=weighted.mean(x,px)
Ex
## [1] 0.08
# (v) variance of x
Varx=weighted.mean(x*x,px)-(weighted.mean(x ,px))^2
Varx
## [1] 0.0784
# (vi) Visualize probability distribution
plot(x,px,type="h",xlab="values of x",ylab="Probability distribution of
x",main="Binomial distribution")