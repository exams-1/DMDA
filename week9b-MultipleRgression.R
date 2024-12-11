input<-mtcars[,c("mpg","wt","disp","hp")]
#Creating relationship model.
model<-lm(mpg~wt+disp+hp,data=input)
#Showing the Model.
print(model)
