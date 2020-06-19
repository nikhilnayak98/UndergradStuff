x = c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y = c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

lm1=lm(y~x)
#lm2=glm(y~x,family = gaussian)
lm1
summary(lm1)
prd=predict(lm1)
prd
dif_lm1=y-prd
dif_lm1

confint(lm1,level = 0.9)

p=data.frame(x=c(150,160))
p1=predict(lm1,p)
p1
plot(x,y)
plot(x,y,abline(lm(y~x)))
plot(y,x,col = "blue",main = "Height & Weight Regression", abline(lm(x~y)),cex = 1.3,pch = 15,xlab = "Weight in Kg",ylab = "Height in cm")


d2=read.table("auto.txt",header = T)
head(d2)

