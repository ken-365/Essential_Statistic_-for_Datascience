Pre = c(12,7,11,13,10)
Non = c(7,9,8,10,9)

a= cbind(Pre,Non) ;a

diffmean = mean(Pre)-mean(Non) ; diffmean
MSE = (var(Pre) + var(Non)) /2 
Sm = sqrt((2*MSE)/10) ;Sm
t= diffmean / Sm ;t
#######################
diffscore = Pre - Non ; diffscore
m1 = mean ( diffscore)
se1 = sd(diffscore) / sqrt(5) 

t = m1/ se1 ; t





############################################################################################
mean.sample = 60 
n.sample = 22 
SDpop = 10
SDsam = SDpop / sqrt(22) ; SDsam

interval = 60 -(2.576) * SDsam ; interval
#######

binterval = 60 + (2.831 * SDsam ) ; binterval

10 / sqrt(22)
############################################################################################

# Chaptor 12  Q 11


