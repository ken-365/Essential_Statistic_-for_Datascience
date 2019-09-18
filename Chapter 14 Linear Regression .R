### question 6
x= c(2,4,4,5,6) ; y = c(5,6,7,11,12)
r = cor (x,y)
df = 3
b = cor (x,y) * sd(x)  /  sd(y) ;b
SSX = var (x) *4
SSY = var (y) *4
S.est = sqrt ( (1-r**2) * SSY / 3   )
S.b = S.est / sqrt(SSX) ; S.b
t = b/S.b

model = lm (y~x)
summary(model)

t2 = r * sqrt(3) / sqrt (1-r**2)

Upper.limit = b+ 3.182*S.b
### question 8
r = .4
N = 20
t.3 = r * sqrt(N-2) / sqrt (1-r**2)
#### question 10
q10 = read.csv("Book1.csv")
Pre = q10$Pre
Post = q10$Post

b = cor(Pre, Post) * sd(Pre) / sd(Post)
A = mean(Post) - b * mean(Pre)
X = 43
Y = b *X +A ; Y
#### question 12
Sx = 2.5
Sy = 3
r = -.6
Mx = 10 ; My = 12

b = r *Sx/Sy
A = My - b * Mx
###### question 18
########The following question is from the Angry Moods (AM) case study.
# 18. (AM#23) Find the regression line for predicting Anger-Out(y) from Control-Out.
#      (a) What is the slope?
#      (b) What is the intercept?
#      (c) Is the relationship at least approximately linear?
#      (d) Test to see if the slope is significantly different from 0.
#      (e) What is the standard error of the estimate?
setwd("C:/Users/PK/Documents/Storage D/2. WD/Projects/Essential_Statistic_-for_Datascience/Case data")
a = read.csv("angry_moods.csv")
str(a)
a$Gender = as.factor(a$Gender)
a$Sports = as.factor(a$Sports)
y = a$Anger.Out
x = a$Control.Out
N = length(y) 

#a) find slope (b) b = r * sY/sX
r = cor (x,y)
Sy = sd(y)
Sx = sd(x)
b = r * Sy / Sx

#b) What is the intercept?   find  A = mean(y) - b * mean (x)
A = mean(y) - b * mean (x)

# c) Is the relationship at least approximately linear?  
# Y = bX +A

# d) Test to see if the slope is significantly different from 0
SSX = var(x) * N-1
S.b = S.est /sqrt(SSX) 
t = b /S.b ;t # may be wrong?

t = r * sqrt(N-2) / sqrt(1-r**2) ;t

# e) What is the standard error of the estimate?
SSY =var(y) * N-1
S.est = sqrt ( (1-r**2) *SSY / N-2) ; S.est

# 
# 19. (SG#3) Find the regression line for predicting the overall university GPA from the high school GPA.
#      
#     (a) What is the slope?
#     (b) What is the y-intercept?
#     (c) If someone had a 2.2 GPA in high school, what is the best estimate of his or her college GPA?
#     (d) If someone had a 4.0 GPA in high school, what is the best estimate of his or her college GPA?

s = read.csv("sat.csv")
str(s)
y = s$univ_GPA
x = s$high_GPA

# predicting y (univ_GPA) from x (high_GPA)
#     (a) What is the slope?

r = cor (y,x) 
b = r * sd(y) / sd(x) ;b
#     (b) What is the y-intercept?
A = mean(y) - b * mean(x) ;A
#     (c) If someone had a 2.2 GPA in high school, what is the best estimate of his or her college GPA?
Y = b * 2.2 +A ;Y
#     (d) If someone had a 4.0 GPA in high school, what is the best estimate of his or her college GPA?
Y = b * 4 +A ;Y


