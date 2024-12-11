#dnorm
x<-seq(-10,10,by=0.1)
y<-dnorm(x,mean=2.5,sd=0.5)
png(file="dnorm.png")
plot(x,y)
dev.off()

#pnorm
x<-seq(-10,10,by=0.1)
y<-pnorm(x,mean=2.5,sd=0.5)
png(file="pnorm.png")
plot(x,y)
dev.off()

#qnorm
x<-seq(-10,10,by=0.02)
y<-qnorm(x,mean=2,sd=1)
png(file="qnorm.png")
plot(x,y)
dev.off()

#rnorm
y<-rnorm(50)
png(file="rnorm.png")
hist(y,main="Normal Distribution")
dev.off()
