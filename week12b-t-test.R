x<-c(0.593,0.271,0.354,0.364,0.739,0.464,0.273,0.737,0.282)
y<-(t.test(x,alternative = "greater",mu=0.3))
print(y)
plot(x) 
