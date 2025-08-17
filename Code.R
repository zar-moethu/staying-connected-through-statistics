# Load required libraries
library("readxl")
library("ggplot2")

# Read the dataset
p <- read_excel("data.xlsx")
p

# Summary of the data
summary(p)

# -------------------------------
# 1. Chi-Square Goodness-of-Fit Test
# -------------------------------

# Step 1: Extract total calls per day
x <- p$`Total_calls`

## Step 2: Check basic stats
length(x)       # Number of observations
sum(x)          # Total calls made
mean(x)         # Average calls per day (lambda)

# Optional verification
sum(x) / length(x)

# Step 3: Frequency distribution of observed calls
o <- table(x)
o
sum(o)          # Should be 20

# Step 4: Plot observed frequencies
plot(
  o,
  xlab = "Total Calls per Day",
  ylab = "Frequency",
  main = "Frequency of Total Daily Calls"
)

# Step 5: Calculate expected probabilities under Poisson model
lambda <- mean(x)
probs <- dpois(0:3, lambda)                     # Probabilities for 0–3 calls
probs <- c(probs, ppois(3, lambda, lower.tail = FALSE))  # Add 4+ as a group
names(probs) <- c("0", "1", "2", "3", "4+")
probs
sum(probs)      # Should be ~1

# Step 6: Calculate expected frequencies
e <- probs * length(x)   # Expected counts for each call level
e

# Step 7: Match observed frequencies into same bins
observed <- c(
  sum(x == 0),
  sum(x == 1),
  sum(x == 2),
  sum(x == 3),
  sum(x >= 4)
)
names(observed) <- names(probs)
observed

# Step 8: Chi-square statistic and p-value
B <- sum((observed - e)^2 / e)      # Chi-square test statistic
B

p_value <- 1 - pchisq(B, df = length(e) - 1)  
p_value


# -------------------------------
# 2. Student’s t-test
# -------------------------------

# Step 1: Extract number of calls for Mom and Dad
mom_calls <- p$M_calls
dad_calls <- p$D_calls

# Step 2: Check basic stats
mean(mom_calls)   # Average daily calls from Mom
mean(dad_calls)   # Average daily calls from Dad

# Step 3: Run two-sided t-test to compare means
t_test_result <- t.test(mom_calls, dad_calls, alternative = "two.sided")
t_test_result

# Step 4: Extract useful output
t_statistic <- t_test_result$statistic
p_value <- t_test_result$p.value
conf_int <- t_test_result$conf.int
df <- t_test_result$parameter

# Step 5: Print summary
t_statistic
df
conf_int
p_value


# -------------------------------
# 4.3 Fisher’s Exact Test
# -------------------------------

# Step 1: Create a 2x2 contingency table
# Counts: Calls vs No Calls for Mom and Dad
matrix_data <- matrix(c(4, 3, 7, 6), nrow = 2)

# Step 2: Add dimension names for readability
dimnames(matrix_data) <- list(
  Mom = c("Called", "NoCall"),
  Dad = c("Called", "NoCall")
)

# Step 3: View the table
matrix_data

# Step 4: Perform Fisher's Exact Test (one-sided)
fisher.test(matrix_data, alternative = "greater")


