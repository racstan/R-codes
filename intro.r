# Generate data
1:10
## [1] 1 2 3 4 5 6 7 8 9 10
# Assign variable name to the value
X=10; X<-10; 10->X;
# To combine numeric values into a vector
c(1,2,5)
## [1] 1 2 5
#Arithmetic operations of vectors are performed member wise.
a = c(1, 3, 5, 7)
b = c(2, 4, 6, 8)
#addition
a+b
## [1] 3 7 11 15
#subtraction
a-b
## [1] -1 -1 -1 -1
#constant multiplication
5*a
## [1] 5 15 25 35
#product
a*b
## [1] 2 12 30 56
#division
a/b
## [1] 0.5000000 0.7500000 0.8333333 0.8750000
# character object is used to represent string values in R
X=as.character(5.2)
X
## [1] "5.2"
#Concatenation of strings
paste("Baa", "Baa", "Black", "Sheep")
## [1] "Baa Baa Black Sheep"
