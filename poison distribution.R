# Sample data (count response and predictor)
x<-1:10
# Simulated counts (could be number of events)
y<-c(2, 3, 4, 6, 7, 9, 12, 15, 18, 20)
# Create data frame
data<-data.frame(x = x, y = y)
# Fit Poisson regression model: y ~ x
poisson_model<-glm(y~x,family=poisson(link="log"),data=data)
# Summary of the model
summary(poisson_model)
# Predict expected counts over a fine sequence for smooth curve
x_seq<-seq(min(x),max(x),length.out=100)
predicted_counts<-predict(poisson_model,newdata=data.frame(x=x_seq),type="response")
# Plot original data points
plot(x,y,pch=19,col="blue",main="Poisson Regression",xlab="x",ylab="Count")
# Add Poisson regression curve
lines(x_seq,predicted_counts,col="red",lwd=2)
