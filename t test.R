#x  <- c(0.593, 0.142, 0.329, 0.691, 0.231, 0.793, 0.519, 0.392, 0.418)t.test(x, alternative="greater", mu=0.3)


x  <- c(0.593, 0.142, 0.329, 0.691, 0.231, 0.793, 0.519, 0.392, 0.418)
t.test(x, alternative="greater", mu=0.3)

plot(x, pch=19, ylim=c(0, 1), ylab="Values", xlab="Index", main="Data points with Hypothesized Mean")
abline(h=0.3, col="blue", lwd=2, lty=2)  # Hypothesized mean line at 0.3
abline(h=mean(x), col="red", lwd=2)      # Sample mean line
legend("topright", legend=c("Hypothesized mean (0.3)", "Sample mean"),
       col=c("blue", "red"), lty=c(2,1), lwd=2)
