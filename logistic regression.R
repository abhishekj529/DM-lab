# Sample binary classification data
# x: predictor variable
# y: binary response (0 or 1)
x<-c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
y<-c(0, 0, 0, 0, 0, 1, 1, 1, 1, 1)
# Create a data frame
data<-data.frame(x = x, y = y)
# Fit logistic regression model
log_model<-glm(y ~ x,data=data,family="binomial")
# Print summary of the model
summary(log_model)
# Predict probabilities using the model
x_values<-seq(min(x),max(x),length.out=100)
predicted_probs<-predict(log_model,newdata=data.frame(x=x_values),type="response")
# Plot the original data
plot(x,y,pch=19,col="blue",main="Logistic Regression",xlab="x",ylab="Probability",ylim=c(0,1))
# Add logistic regression curve
lines(x_values,predicted_probs,col="red",lwd=2)
