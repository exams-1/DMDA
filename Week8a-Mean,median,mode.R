#Mean
x <-c(12,7,3,4.2,18,2,54,21,8,-5)
result <- mean(x)
print(result)
#Mean with trim function
x<-c(12,7,3,4.2,18,2,54,21,8,-5)
result <- mean(x,trim=0.3)
print(result)
#Applying NA option
x <-c(12,7,3,4.2,18,2,54,21,8,-5)
result<-mean(x,na.rm=TRUE)
print(result)
#Median
x <- c(12,7,3,4.2,18,2,54,21,8,-5)
result <- median(x)
print(result)
#Mode
getmode <- function(v){
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v,uniqv)))]
}

v <- c(2,1,2,3,1,2,3,4,1,5,5)
result<-getmode(v)
print(result)

charv<-c("o","it","the","it")
result<-getmode(charv)
print(result)
