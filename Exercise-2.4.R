

r <- c(0.02, 0.05, -0.09, 0.08, -0.02, 0.00, 0.12, 0.06, 0.02, -0.08)

names(r) <- 1:length(r)

N <- 400

se <- 1 / sqrt(N)

bound <- 1.96 * se

outside_bounds <- r[abs(r) > bound]

cat("Sample Autocorrelations:\n")
print(r)

cat("\nStandard Error:", se, "\n")
cat("95% Critical Limit: +/-", bound, "\n\n")

cat("Values outside 95% limits:\n")
print(outside_bounds)


