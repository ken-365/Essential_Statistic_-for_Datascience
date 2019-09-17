#Clean data
a = read.csv("angry_moods.csv")
str(a)
a$Gender = as.factor(a$Gender)
a$Sports = as.factor(a$Sports)
str(a)
#############################################
#(AM#6c) Is there a difference in how much males and females use aggressive behavior to improve an angry mood? 
#For the "Anger-Out" scores, compute a 99% confidence interval on the difference between gender means.

male = a %>% filter (Gender == 1) 
female = a %>% filter (Gender == 2)

m = male$Anger.Out
f = female$Anger.Out

dif.mean = mean (m) - mean (f)
MSE = (var(m) + var(f)) /2 
Sm = sqrt(MSE*2/78)

Lower = dif.mean - 2.642 * Sm
Upper = dif.mean + 2.642 * Sm
Lower ; Upper
#############################################
#(AM#10) Calculate the 95% confidence interval for the difference between the mean Anger-In score 
#for the athletes and non-athletes. What can you conclude?

m1 = male$Anger.In
f1 = female$Anger.In

dif.mean.1 = mean(f1) - mean(m1)
MSE  = (var(m1)+var(f1))/2
sm = sqrt(2* MSE/78)                             

Lower1 = dif.mean.1 - 1.992 * Sm
Upper1 = dif.mean.1 + 1.992 * Sm
Lower1 ; Upper1
#############################################
#Find the 95% confidence interval on the population correlation between 
#the Anger-Out and Control-Out scores

Co = cor(a$Anger.Out, a$Control.Out)
Z = -0.667
Standerror  = 1 / sqrt(78-3)
z = 1.96

Lower2 = Z - z * Standerror
Upper2 = Z + z* Standerror
Lower2 ; Upper2





