x<-c(1,2,3,4,5)
y<-c(1.2,1.8,2.6,3.2,3.8)
#applying the lm() function
relationship_model<-lm(y~x)
print(relationship_model)
#getting summary of relationship model
print(summary(relationship_model))
plot(y,x,col="red",main="Height and Weight Regression",abline(lm(x~y)),cex=1.3,pch=16,xlab="Weight in Kg",ylab="Height in cm")
dev.off()
