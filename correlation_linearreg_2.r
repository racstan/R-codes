#Problem: The body weight and the BMI of 12 school going children are given in the following table:
#Weight: 15,26,27,2,25.5,27,32,18,22,20,26,24
#BMI: 133.35,16.1,16.74,16,13.59,15.73,15.65,13.85,16.07,12.8,13.65,14.42
#To do: Fit a simple linear regression model BMI on weight and examine the results.
weight=c(15,26,27,2,25.5,27,32,18,22,20,26,24)
weight
## [1] 15.0 26.0 27.0 2.0 25.5 27.0 32.0 18.0 22.0 20.0 26.0 24.0
bmi=c(133.35,16.1,16.74,16,13.59,15.73,15.65,13.85,16.07,12.8,13.65,14.42)
bmi
## [1] 133.35 16.10 16.74 16.00 13.59 15.73 15.65 13.85 16.07 12.80
## [11] 13.65 14.42
cor(weight,bmi)
## [1] -0.2841834
mode1<-lm(bmi~weight)
summary.lm(mode1)
##
## Call:
## lm(formula = bmi ~ weight)
##
## Residuals:
## Min 1Q Median 3Q Max
## -33.838 -10.253 -6.582 -2.659 99.734
##
## Coefficients:
## Estimate Std. Error t value Pr(>|t|)
## (Intercept) 52.334 30.978 1.689 0.122
## weight -1.248 1.331 -0.937 0.371
##
## Residual standard error: 34.39 on 10 degrees of freedom
## Multiple R-squared: 0.08076, Adjusted R-squared: -0.01116
## F-statistic: 0.8786 on 1 and 10 DF, p-value: 0.3707