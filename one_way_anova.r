#A car rental agency, which uses 5 different brands of tyres in the process of deciding the brand
#of tyre to purchase as standard equipment for its fleet, finds that each of 5 tyres of each brand
#last the following number of kilometres (in thousands):
#A B C D E
#36 46 35 45 41
#37 39 42 36 39
#42 35 37 39 37
#38 37 43 35 35
#47 43 38 32 38
#Test the hypothesis that the five brands have almost the same average life.

#One-way ANOVA
# Types of tyres
A=c(36,37,42,38,47)
B=c(46,39,35,37,43)
C=c(35,42,37,43,38)
D=c(45,36,39,35,32)
E=c(41,39,37,35,38)
group<-data.frame(cbind(A,B,C,D,E))
group
## A B C D E
## 1 36 46 35 45 41
## 2 37 39 42 36 39
## 3 42 35 37 39 37
## 4 38 37 43 35 35
## 5 47 43 38 32 38
summary(group)
## A B C D E
## Min. :36 Min. :35 Min. :35 Min. :32.0 Min. :35
## 1st Qu.:37 1st Qu.:37 1st Qu.:37 1st Qu.:35.0 1st Qu.:37
## Median :38 Median :39 Median :38 Median :36.0 Median :38
## Mean :40 Mean :40 Mean :39 Mean :37.4 Mean :38
## 3rd Qu.:42 3rd Qu.:43 3rd Qu.:42 3rd Qu.:39.0 3rd Qu.:39
## Max. :47 Max. :46 Max. :43 Max. :45.0 Max. :41
# stack vector from data frame
stgr<-stack(group);stgr
## values ind
## 1 36 A
## 2 37 A
## 3 42 A
## 4 38 A
## 5 47 A
## 6 46 B
## 7 39 B
## 8 35 B
## 9 37 B
## 10 43 B
## 11 35 C
## 12 42 C
## 13 37 C
## 14 43 C
## 15 38 C
## 16 45 D
## 17 36 D
## 18 39 D
## 19 35 D
## 20 32 D
## 21 41 E
## 22 39 E
## 23 37 E
## 24 35 E
## 25 38 E
# completely randomized design
crd<-aov(values~ind,data=stgr)
# ANOVA table
summary(crd)
## Df Sum Sq Mean Sq F value Pr(>F)
## ind 4 27.4 6.86 0.422 0.791
## Residuals 20 325.2 16.26
# Visualization of data
boxplot(group, ylab="Average life of tyres in kilometers",main="Brands of
Tyres")