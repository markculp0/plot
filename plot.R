# My Plot

# Scientific notation off
options(scipen = 999) 


x <- c(1,2,3)
y <- c(1,3,8)
plot(x,y,type="n")

lmout <- lm(y ~ x)
abline(lmout)





