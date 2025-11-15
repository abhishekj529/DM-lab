# Load the MASS package
library(MASS)

# View structure of survey dataset to check variables
str(survey)

# Create contingency table of Exer vs Smoke
survey_table <- table(survey$Exer, survey$Smoke)
print(survey_table)

# Perform Chi-Square test of independence
chi_result <- chisq.test(survey_table)
print(chi_result)

# Plot grouped barplot
barplot(survey_table, beside = TRUE, legend = TRUE,
        col = rainbow(nrow(survey_table)),
        main = "Grouped Barplot of Exer vs Smoke",
        xlab = "Smoke", ylab = "Count")


