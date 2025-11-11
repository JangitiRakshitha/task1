# -----------------------------
# SIMPLE LINEAR REGRESSION
# -----------------------------
# Read CSV file (Speed vs Distance)
cars_data <- read.csv("C:/Users/Public/Downloads/cars_data.csv")

# View first rows
head(cars_data)

# Build simple linear regression model
lm_simple <- lm(Distance ~ Speed, data = cars_data)

# Summary of the model
cat("\nSimple Linear Regression Summary:\n")
print(summary(lm_simple))
# Predict values
pred_simple <- predict(lm_simple)

# Plot actual vs regression line
plot(cars_data$Speed, cars_data$Distance,
     main = "Simple Linear Regression",
     xlab = "Speed", ylab = "Distance",
     pch = 19, col = "blue")
abline(lm_simple, col = "red", lwd = 2)


# -----------------------------
# MULTIPLE LINEAR REGRESSION
# -----------------------------
# Example dataset: Students marks
students_data <- data.frame(
  Hours_Study = c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11),
  Hours_Sleep = c(8, 7, 7, 6, 6, 5, 5, 4, 4, 3),
  Marks = c(50, 55, 60, 62, 65, 70, 72, 75, 78, 80)
  
  