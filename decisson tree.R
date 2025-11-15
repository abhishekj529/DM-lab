#Data Load
data("iris")
#Install the required packages
install.packages("caret")
install.packages("C50")
#Library invoke
library(caret)
library(C50)
#To make the results consistent across the runs
set.seed(7)
trainIndex <- sample(seq_len(nrow(iris)), size = 0.7 * nrow(iris))
training <- iris[trainIndex, ]
testing <- iris[-trainIndex, ]
#Model Building
model<-C5.0(Species~.,data = training) 
#Generate the model summary
summary(model)
#Predict for test data set
pred<-predict.C5.0(model,testing[,-5]) #type ="prob"
pred
#Accuracy of the algorithm
a<-table(testing$Species,pred)
sum(diag(a))/sum(a)
#Visualize the decision tree
plot(model)
