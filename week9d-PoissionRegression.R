warpbreaks <- read.csv("~/warpbreaks.csv")
input<-warpbreaks
print(head(input))
output<-glm(formula=breaks~wool+tension,data=warpbreaks,family=poisson)
print(summary(output))
plot(output)

