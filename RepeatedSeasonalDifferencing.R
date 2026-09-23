# 1. Define time index and seasonal period d (e.g., d = 12 for monthly)

d <- 12
t <- 1:240

# simulate the components of this exercise:

S_pattern <- c(3, -2, 1, 4, -1, -3, 2, 0, -2, 1, 3, -6)
S <- rep(S_pattern, 20) # For 20 years

set.seed(42)

epsilon <- rnorm(240, mean = 0, sd = 1)

# Generate X_t = t^3 + (1 + t + t^2)*S_t + epsilon_t
X <- ts(t^3 + (1 + t + t^2) * S + epsilon, frequency = d)

# 3. Apply repeated seasonal differencing for r = 1, 2, 3, 4
diff_r1 <- diff(X, lag = d, differences = 1)
diff_r2 <- diff(X, lag = d, differences = 2)
diff_r3 <- diff(X, lag = d, differences = 3)
diff_r4 <- diff(X, lag = d, differences = 4)

# 4. Plot to inspect stationarity at r = 4
par(mfrow = c(2, 2))
plot(diff_r1, main = "r = 1 (Trend t^2, Season t^1)", ylab = expression(nabla[12]^1 * X))
plot(diff_r2, main = "r = 2 (Trend t^1, Season t^0)", ylab = expression(nabla[12]^2 * X))
plot(diff_r3, main = "r = 3 (Constant Trend, No Season)", ylab = expression(nabla[12]^3 * X))
plot(diff_r4, main = "r = 4 (Stationary Noise Only)", ylab = expression(nabla[12]^4 * X))


