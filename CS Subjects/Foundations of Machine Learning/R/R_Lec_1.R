print("hello")

apple = c('red', 'green', 'blue')
apple

list0 = list(apple, 44.2, 2 + 3i, 'list element')
list0

mat = matrix(data = 1:9, 3, 3, TRUE)
mat

arr = array(c('green', 'yellow'), dim = c(3, 3, 2))
arr

data = c(1, 2, 2, 3, 3, 2, 2, 1, 3, 1, 2, 1)

rData = factor(data, labels = c('I', 'II', 'III'))
rData
print(nlevels(rData))

gender = c('Male', 'Male', 'Female')
height = c(152, 171.5, 165)
weight = c(81, 93, 78)
age = c(42, 38, 26)

BMI = data.frame(gender, height, weight, age)
BMI

BMI$gender
BMI$height

sample(1:10, 5, replace = TRUE)

x = rnorm(100)
head(x)
hist(x)
mean(x)
sd(x)

y = rnorm(100)
plot(x, y, col = 'dark red')

getwd()

setwd('C:\\Users\\Nikhil\\Documents\\Books\\Computer Science\\Foundations of Machine Learning\\R')

# 18th Dec
data = read.csv('winequality-red.csv', header = T)
head(data)
attach(data)
head(subset(data, fixed_acidity>11.2))

b1 = boxplot(fixed_acidity)
b1
summary(data)

hist(fixed_acidity)

library(car)
x1 = rnorm(20)
x2 = rnorm(20)
x3 = rnorm(20)
pairs(~x1 + x2 + x3)
