# Problem-1
# Import the inbuilt data set "cars"
data=cars
data
## speed dist
## 1 4 2
## 2 4 10
## 3 7 4
## 4 7 22
## 5 8 16
## 6 9 10
## 7 10 18
## 8 10 26
## 9 10 34
## 10 11 17
## 11 11 28
## 12 12 14
## 13 12 20
## 14 12 24
## 15 12 28
## 16 13 26
## 17 13 34
## 18 13 34
## 19 13 46
## 20 14 26
## 21 14 36
## 22 14 60
## 23 14 80
## 24 15 20
## 25 15 26
## 26 15 54
## 27 16 32
## 28 16 40
## 29 17 32
## 30 17 40
## 31 17 50
## 32 18 42
## 33 18 56
## 34 18 76
## 35 18 84
## 36 19 36
## 37 19 46
## 38 19 68
## 39 20 32
## 40 20 48
## 41 20 52
## 42 20 56
## 43 20 64
## 44 22 66
## 45 23 54
## 46 24 70
## 47 24 92
## 48 24 93
## 49 24 120
## 50 25 85
# Summary of the data set
summary(data)
## speed dist
## Min. : 4.0 Min. : 2.00
## 1st Qu.:12.0 1st Qu.: 26.00
## Median :15.0 Median : 36.00
## Mean :15.4 Mean : 42.98
## 3rd Qu.:19.0 3rd Qu.: 56.00
## Max. :25.0 Max. :120.00
# Variance of "speed"
v1=var(data$speed)
v1
## [1] 27.95918
# Variance of "dist"
v2=var(data$dist)
v2
## [1] 664.0608
# Covariance between "speed" and "dist"
covariance=cov(data$speed,data$dist)
covariance
## [1] 109.9469
#or
covariance=var(data$speed,data$dist)
covariance
## [1] 109.9469
# correlation coefficient using Pearson's formula
corr=covariance/(sd(data$speed)*sd(data$dist))
corr
## [1] 0.8068949
# or
corr=cor(data$speed,data$dist)
corr
## [1] 0.8068949
# Test for association between paired samples
cor.test(data$speed,data$dist)
##
## Pearson's product-moment correlation
##
## data: data$speed and data$dist
## t = 9.464, df = 48, p-value = 1.49e-12
## alternative hypothesis: true correlation is not equal to 0
## 95 percent confidence interval:
## 0.6816422 0.8862036
## sample estimates:
## cor
## 0.8068949
cor.test(data$speed,data$dist,method="pearson")
##
## Pearson's product-moment correlation
##
## data: data$speed and data$dist
## t = 9.464, df = 48, p-value = 1.49e-12
## alternative hypothesis: true correlation is not equal to 0
## 95 percent confidence interval:
## 0.6816422 0.8862036
## sample estimates:
## cor
## 0.8068949
cor.test(data$speed,data$dist,method="spearman")
##
## Spearman's rank correlation rho
##
## data: data$speed and data$dist
## S = 3532.8, p-value = 8.825e-14
## alternative hypothesis: true rho is not equal to 0
## sample estimates:
## rho
## 0.8303568
# Visualize the samples
plot(data$speed,data$dist)
# Linear Regression model of "speed" with respect to "dist"
regression1=lm(data$speed~data$dist)
regression1
##
## Call:
## lm(formula = data$speed ~ data$dist)
##
## Coefficients:
## (Intercept) data$dist
## 8.2839 0.1656
# Visualize linear regression line
abline(regression1)
summary(regression1)
##
## Call:
## lm(formula = data$speed ~ data$dist)
##
## Residuals:
## Min 1Q Median 3Q Max
## -7.5293 -2.1550 0.3615 2.4377 6.4179
##
## Coefficients:
## Estimate Std. Error t value Pr(>|t|)
## (Intercept) 8.28391 0.87438 9.474 1.44e-12 ***
## data$dist 0.16557 0.01749 9.464 1.49e-12 ***
## ---
## Signif. codes: 0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
##
## Residual standard error: 3.156 on 48 degrees of freedom
## Multiple R-squared: 0.6511, Adjusted R-squared: 0.6438
## F-statistic: 89.57 on 1 and 48 DF, p-value: 1.49e-12
# Linear Regression model of "dist" with respect to "speed"
regression2=lm(data$dist~data$speed)
regression2
##
## Call:
## lm(formula = data$dist ~ data$speed)
##
## Coefficients:
## (Intercept) data$speed
## -17.579 3.932
abline(regression2)

summary(regression2)
##
## Call:
## lm(formula = data$dist ~ data$speed)
##
## Residuals:
## Min 1Q Median 3Q Max
## -29.069 -9.525 -2.272 9.215 43.201
##
## Coefficients:
## Estimate Std. Error t value Pr(>|t|)
## (Intercept) -17.5791 6.7584 -2.601 0.0123 *
## data$speed 3.9324 0.4155 9.464 1.49e-12 ***
## ---
## Signif. codes: 0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
##
## Residual standard error: 15.38 on 48 degrees of freedom
## Multiple R-squared: 0.6511, Adjusted R-squared: 0.6438
## F-statistic: 89.57 on 1 and 48 DF, p-value: 1.49e-12