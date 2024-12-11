#dbinom
x<-seq(0,50,by=1)
y<-dbinom(x,50,0.5)
png(file="dbinom.png")
plot(x,y)
dev.off()

#pbinom
y<-pbinom(26,50,0.5)
print(y)
plot(y)

#qbinom
y<-qbinom(0.25,51,1/2)
print(y)
plot(y)

#rbinom
x<-rbinom(8,150,0.4)
print(x)
plot(x)
