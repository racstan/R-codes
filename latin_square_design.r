#Perform Latin Square Design for the following.
#Consider analyzing the productivity of five kinds of manure, five kinds of cultivation, and five
#kinds of crops. As follows, the data are organized in a Latin Square format:
# cultP cultQ cultR cultS cultT
#manure1 "P42" "R47" "Q55" "S51" "T44"
#manure2 "T45" "Q54" "R52" "P44" "S50"
#manure3 "R41" "P46" "DS7" "T47" "Q48"
#manure4 "Q56" "S52" "T49" "R50" "P43"
#manure5 "S47" "T49" "P45" "Q54" "R46"
#The three factors are: manure (manure1:5), cultivation (cultP:T), crop(P:T).


#creating dataframes in R
manure=c(rep("manure1",1), rep("manure2",1), rep("manure3",1),
rep("manure4",1), rep("manure5",1))
cultivation=c(rep("cultP",5), rep("cultQ",5), rep("cultR",5), rep("cultS",5),
rep("cultT",5))
crop=c("P","T","R","Q","S", "R","Q","P","S","T", "Q","R","S","T","P",
"S","P","T","R","Q", "T","S","Q","P","R")
freq=c(42,45,41,56,47, 47,54,46,52,49, 55,52,57,49,45, 51,44,47,50,54,
44,50,48,43,46)
data=data.frame(cultivation,manure,crop,freq)
data
## cultivation manure crop freq
## 1 cultP manure1 P 42
## 2 cultP manure2 T 45
## 3 cultP manure3 R 41
## 4 cultP manure4 Q 56
## 5 cultP manure5 S 47
## 6 cultQ manure1 R 47
## 7 cultQ manure2 Q 54
## 8 cultQ manure3 P 46
## 9 cultQ manure4 S 52
## 10 cultQ manure5 T 49
## 11 cultR manure1 Q 55
## 12 cultR manure2 R 52
## 13 cultR manure3 S 57
## 14 cultR manure4 T 49
## 15 cultR manure5 P 45
## 16 cultS manure1 S 51
## 17 cultS manure2 P 44
## 18 cultS manure3 T 47
## 19 cultS manure4 R 50
## 20 cultS manure5 Q 54
## 21 cultT manure1 T 44
## 22 cultT manure2 S 50
## 23 cultT manure3 Q 48
## 24 cultT manure4 P 43
## 25 cultT manure5 R 46
#recreating the original table, using the matrix function
matrix(data$crop,5,5)
## [,1] [,2] [,3] [,4] [,5]
## [1,] "P" "R" "Q" "S" "T"
## [2,] "T" "Q" "R" "P" "S"
## [3,] "R" "P" "S" "T" "Q"
## [4,] "Q" "S" "T" "R" "P"
## [5,] "S" "T" "P" "Q" "R"
matrix(data$freq,5,5)
## [,1] [,2] [,3] [,4] [,5]
## [1,] 42 47 55 51 44
## [2,] 45 54 52 44 50
## [3,] 41 46 57 47 48
## [4,] 56 52 49 50 43
## [5,] 47 49 45 54 46
#creating the anova table
fit=lm(freq~manure+cultivation+crop,data)
anova(fit)
## Analysis of Variance Table
##
## Response: freq
## Df Sum Sq Mean Sq F value Pr(>F)
## manure 4 17.76 4.440 0.7967 0.549839
## cultivation 4 109.36 27.340 4.9055 0.014105 *
## crop 4 286.16 71.540 12.8361 0.000271 ***
## Residuals 12 66.88 5.573
## ---
## Signif. codes: 0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
