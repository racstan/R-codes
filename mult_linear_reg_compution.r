#Problem 1: The sale of a Product in lakhs of rupees (Y) is expected to be influenced by two variables namely the advertising expenditure X1 (in'OOORS) and the number of sales persons(X2) in a region. Sample data on 8 Regions of a state has given the following results

# Input the variables
Y=c(110,80,70,120,150,90,70,120)
Y
## [1] 110 80 70 120 150 90 70 120
X1=c(30,40,20,50,60,40,20,60)
X1
## [1] 30 40 20 50 60 40 20 60
X2=c(11,10,7,15,19,12,8,14)
X2
## [1] 11 10 7 15 19 12 8 14
# Linear regression model of Y on X1 and X2
RegModel=lm(Y~X1+X2)
RegModel
##
## Call:
## lm(formula = Y ~ X1 + X2)
##
## Coefficients:
## (Intercept) X1 X2
## 16.8314 -0.2442 7.8488
# Summary of the data
summary(RegModel)
##
## Call:
## lm(formula = Y ~ X1 + X2)
##
## Residuals:
## 1 2 3 4 5 6 7 8
## 14.157 -5.552 3.110 -2.355 -1.308 -11.250 -4.738 7.936
##
## Coefficients:
## Estimate Std. Error t value Pr(>|t|)
## (Intercept) 16.8314 11.8290 1.423 0.2140
## X1 -0.2442 0.5375 -0.454 0.6687
## X2 7.8488 2.1945 3.577 0.0159 *
## ---
## Signif. codes: 0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
##
## Residual standard error: 9.593 on 5 degrees of freedom
## Multiple R-squared: 0.9191, Adjusted R-squared: 0.8867
## F-statistic: 28.4 on 2 and 5 DF, p-value: 0.001862
# install.packages("scatterplot3d")
library(scatterplot3d)
# Plot the data set
scatterplot3d(Y,X1,X2)
