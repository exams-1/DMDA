data("iris")
install.packages("caret")
install.packages("C50")
library(caret)
library(C50)
set.seed(7)
inTraininglocal<-createDataPartition(iris$Species,p=.70,list=F)
training<-iris[inTraininglocal,]
testing<-iris[-inTraininglocal,]
model<-C5.0(Species ~ .,training)
summary(model)
pred<-predict.C5.0(model,testing[,-5])
a<-tables(testing$Species,pred)
plot(model)
