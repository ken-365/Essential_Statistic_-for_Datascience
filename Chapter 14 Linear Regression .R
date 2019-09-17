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
