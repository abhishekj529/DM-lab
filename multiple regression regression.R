# Creating input data
input <- mtcars[, c("mpg", "wt", "disp", "hp")]
print(head(input))

# Creating the relationship model
Model <- lm(mpg ~ wt + disp * hp, data = input)

# Showing the Model summary
print(summary(Model))

# Predict mpg using the model
predicted_mpg <- predict(Model)
png("multi linear regression.png")
# Plot actual vs predicted mpg
plot(input$mpg, predicted_mpg,
     xlab = "Actual MPG",
     ylab = "Predicted MPG",
     main = "Actual vs Predicted MPG",
     pch = 19, col = "blue")
abline(a = 0, b = 1, col = "red", lwd = 2)  # Add y = x line for reference
dev.off()

