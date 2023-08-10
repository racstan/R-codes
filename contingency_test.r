# Problem : 2
#From the following information state whether the condition of the child is associated with the
#condition of the house.
#Condition of child    Condition of house Clean     Condition of house dirty
#Clean                           69                               51
#Fairly clean                    81                               20
#dirty                           35                               44
# Independent of attributes
# Input the data
data<-matrix(c(69,51,81,20,35,44),ncol=2,byrow=T)
data
## [,1] [,2]
## [1,] 69 51
## [2,] 81 20
## [3,] 35 44
# number of data
l=length(data);l
## [1] 6
# output by Chisq-distribution
cv=chisq.test(data)
cv
##
## Pearson's Chi-squared test
##
## data: data
## X-squared = 25.629, df = 2, p-value = 2.721e-06
# p-value
cv=cv$p.value
cv
## [1] 2.72114e-06
# Hypothesis conclusion
if(cv >alpha){print("Attributes are independent")} else{print("Attributes are
not independent")}
## [1] "Attributes are not independent"
