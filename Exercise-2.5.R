# Define time index (e.g., 10 years of monthly data)
t <- 1:120

# Parameters
a <- 5
b <- 0.5
S <- rep(c(2, -1, 3, 0, -2, 1, 4, -3, 0, 1, -2, -3), 10) # Seasonal pattern (period 12)
set.seed(123)
epsilon <- rnorm(120, mean = 0, sd = 1) # Random stationary noise

# Simulate additive model X_t = a + b*t + S_t + epsilon_t
X <- ts(a + b * t + S + epsilon, frequency = 12)

# Now diff() will execute flawlessly
diff_X <- diff(X, lag = 12)

# Check the plot
plot(diff_X, main = "Seasonally Differenced Simulated Series (Lag 12)",
     ylab = expression(nabla[12] * X[t]))