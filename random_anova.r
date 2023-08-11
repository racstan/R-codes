#The following table gives monthly sales (in thousand rupees) of a certain firm in the 3 states by
#its four salesmen.
#States Salesmen
#I II III IV
#A 6 5 3 8
#B 8 9 6 5
#C 10 7 8 7
#Setup the analysis of variance table and test whether there is any significant difference (i)
#between the salesmen (ii) between sales in the states.


#Monthly sales of States
StateA=c(6,5,3,8)
StateA
## [1] 6 5 3 8
StateB=c(8,9,6,5)
StateB
## [1] 8 9 6 5
StateC=c(10,7,8,7)
StateC
## [1] 10 7 8 7
#frame the data set
Group<-data.frame(cbind(StateA,StateB,StateC))
Group
## StateA StateB StateC
## 1 6 8 10
## 2 5 9 7
## 3 3 6 8
## 4 8 5 7
Sales=c(t(as.matrix(Group))); Sales
## [1] 6 8 10 5 9 7 3 6 8 8 5 7
f=c("State A","State B","State C")
f
## [1] "State A" "State B" "State C"
g=c("Salesman1","Salesman2","Salesman3","Salesman4")
g
## [1] "Salesman1" "Salesman2" "Salesman3" "Salesman4"
# number of columns
k=ncol(Group)
k
## [1] 3
# number of rows
n=nrow(Group)
n
## [1] 4
# Generate factor levels of States
States=gl(k,1,n*k,factor(f))
States
## [1] State A State B State C State A State B State C State A State B State
C
## [10] State A State B State C
## Levels: State A State B State C
# Generate factor levels of Salesmen
Salesmen=gl(n,k,n*k,factor(g))
Salesmen
## [1] Salesman1 Salesman1 Salesman1 Salesman2 Salesman2 Salesman2 Salesman3
## [8] Salesman3 Salesman3 Salesman4 Salesman4 Salesman4
## Levels: Salesman1 Salesman2 Salesman3 Salesman4
# ANOVA table
anova=aov(Sales ~ States + Salesmen)
summary(anova)
## Df Sum Sq Mean Sq F value Pr(>F)
## States 2 12.667 6.333 1.839 0.238
## Salesmen 3 8.333 2.778 