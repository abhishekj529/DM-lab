# Create input data
input <- mtcars[, c("mpg", "wt")]

# Fit the model
Model <- lm(mpg ~ wt , data = input)
print(Model)
# Get predicted values
predicted_mpg <- predict(Model)

# Plot actual vs predicted mpg
plot(input$mpg, predicted_mpg,
     xlab = "Actual MPG",
     ylab = "Predicted MPG",
     main = "Actual vs Predicted MPG",
     pch = 19, col = "blue")
abline(0, 1, col = "red")  # Add y = x line for reference
