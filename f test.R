# Install packages if missing
if (!requireNamespace("randomForest")) install.packages("randomForest")
if (!requireNamespace("party")) install.packages("party")

library(randomForest)
library(party)

head(readingSkills)

set.seed(42)
rf <- randomForest(nativeSpeaker ~ age + shoeSize + score, data = readingSkills, importance = TRUE)
print(rf)
varImpPlot(rf)

plot(ctree(nativeSpeaker ~ age + shoeSize + score, data = readingSkills))

