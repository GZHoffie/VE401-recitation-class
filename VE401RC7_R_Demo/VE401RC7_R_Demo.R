## Example presented in the RC
# Read data
gravity.df = read.csv("data.csv", header = FALSE)

# Simple Linear Model
simple.lm = lm(V2~V1, data = gravity.df)
summary(simple.lm)

# create residual plot
plot(gravity.df$V1, residuals(simple.lm), main = "Residual vs. mass")
abline(a = 0, b = 0, lty = 2)

# Multiplle Linear Model
multi.lm = lm(V2~V1+I(V1^2), data = gravity.df)
summary(multi.lm)
