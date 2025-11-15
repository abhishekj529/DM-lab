# Probability of getting 26 or less heads from a 51 tosses of a coin.
x <- pbinom(26,51,0.35)
plot(x)
print(x)

