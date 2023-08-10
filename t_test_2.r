#The following data relate to the marks obtained by 10 students in two test, one held at the beginning of
#a year and the other at the end of the year after intensive coaching. Do the data indicate that the
#students have got benefited by coaching?
#Test 1 19 17 15 21 16 18 16 14 19 20
#Test 2 15 14 15 19 15 18 16 20 22 19

# Problem 2
#Paired- t-test
# input the data
test1=c(19,17,15,21,16,18,16,14,19,20)
test1
## [1] 19 17 15 21 16 18 16 14 19 20
test2=c(15,14,15,19,15,18,16,20,22,19)
test2
## [1] 15 14 15 19 15 18 16 20 22 19
t=t.test(sample1,sample2,paired=TRUE)
t
##
## Paired t-test
##
## data: sample1 and sample2
## t = 0.46771, df = 7, p-value = 0.6542
## alternative hypothesis: true difference in means is not equal to 0
## 95 percent confidence interval:
## -2.02789 3.02789
## sample estimates:
## mean of the differences
## 0.5
# level of significance
alpha=0.05
# p-value
tv=t$p.value
tv
## [1] 0.6542055
# conclusion
if(tv >alpha){print("Accept Ho")} else{print("Reject Ho")}
## [1] "Accept Ho