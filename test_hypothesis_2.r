#The fatality rate of typhoid patients is believed to be 17.26%. In a certain year 640 patients suffering
#from typhoid were treated in a metropolitan hospital and only 63 patients died. Can you consider the
#hospital efficient?

# Input the data
# Size of the sample
n=640
n
## [1] 640
# Sample proportion
Sprop=63/n
Sprop
## [1] 0.0984375
# Population proportion
Pprop=0.1726
Pprop
## [1] 0.1726
# probability of failure
q=1-Pprop
q
## [1] 0.8274
# test statistic
z=(Sprop-Pprop)/sqrt(Pprop*q/n)
z
## [1] -4.964736
#critical value
E=qnorm(.975)
n
PQ
p P
z


# critical region
c(-E,E)
## [1] -1.959964 1.959964
# confidence interval
Sprop+c(-E,E)*sqrt(Pprop*(1-Pprop)/n)
## [1] 0.06915985 0.12771515
# Conclusion
if(z>-E && z<E){print("Hospital is not efficient")} else{print("Hospital is
efficient")}
## [1] "Hospital is efficient"
