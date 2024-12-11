claimants <- read.csv("C:/Users/keert/Downloads/claimants.csv")
sum(is.na(claimants))
claimants<-na.omit(claimants)
#logistic regression
logit<-glm(ATTORNEY~factor(CLMSEX)+factor(CLMINSUR)+factor(SEATBELT)+CLMAGE+LOSS,family="binomial",data=claimants)
summary(logit)

prob=predict(logit,type=c("response"),claimants)
prob

confusion<-table(prob>0.5,claimants$ATTORNEY)
confusion

Accuracy<-sum(diag(confusion))/sum(confusion)
Accuracy

#ROCR confusion
install.packages("ROCR")
install.packages("pROC")
library(ROCR)
library(pROC)
rocrpred=prediction(prob,claimants$ATTORNEY)
rocrperf=performance(rocrpred,'tpr','fpr')
plot(rocrperf,col="blue",colorsize=T)
auc<auc(claimants$ATTORNEY~prob)
auc
