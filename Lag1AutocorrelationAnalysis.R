# PART A

# Input data vector
x <- c(1.6, 0.8, 1.2, 0.5, 0.9, 1.1, 0.6, 1.5, 0.8, 0.9, 1.2, 0.5, 1.3, 0.8, 1.2, 0.4)

# Time plot
plot(x, type = "b", pch = 19, col = "blue",
     xlab = "Time (t)", ylab = expression(x[t]),
     main = "Time Series Plot of 16 Successive Observations")
abline(h = mean(x), lty = 2, col = "gray")

# PART B

'''
The data set starts off with a particular higher value. The higher values
in this data set typically occur at alternating indices that are followed by 
lower values. 

This pronounced alternating pattern indicates negative autocorrelation at lag 1. 
A reasonable visual guess for r_1 is approximately -0.3 to -0.5.
'''

# PART C

# Lagged scatter plot: x_t vs x_{t+1}
plot(x[-length(x)], x[-1], pch = 19, col = "darkgreen",
     xlab = expression(x[t]), ylab = expression(x[t+1]),
     main = expression("Scatter Plot of " * x[t+1] * " vs " * x[t]))
abline(lm(x[-1] ~ x[-length(x)]), col = "red", lwd = 2)

'''
Interpretation: The scatter plot shows points sloping downwards from top-left to 
bottom-right (a negative linear relation). This visually confirms our guess of a 
negative autocorrelation coefficient ($r_1 < 0$).
'''

# PART D

# Using built-in acf function (plot = FALSE gets exact numerical value)
r1_acf <- acf(x, plot = FALSE)$acf[2]
cat("Exact lag-1 autocorrelation (r_1):", r1_acf, "\n")







