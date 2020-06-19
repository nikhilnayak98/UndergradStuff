d=read.csv("Advertising.csv")
names(d)

library(carData)
pairs(d)

lma1=lm(sales~TV,data=d)
lma1
summary(lma1)

lma2=lm(sales~radio,data=d)
summary(lma2)

lma3=lm(sales~newspaper,data=d)
summary(lma3)

lma4=lm(sales~TV+radio+newspaper,data=d)
summary(lma4)

lma5=lm(sales~TV+radio,data=d)
summary(lma5)

lma6=lm(sales~TV+radio+TV*radio,data=d)
summary(lma6)


p=data.frame(TV=c(50,60),radio=c(40,50))
p1=predict(lma6,p)
cor(d)




