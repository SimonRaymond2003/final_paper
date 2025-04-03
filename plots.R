# Load required libraries
library(data.table)
library(ggplot2)

# Read the offensive probabilities data
probs_data <- fread("probs_off_grades.csv")

# Create probability distribution plot
png("offense_probs_dist.png", width = 800, height = 600)
ggplot(probs_data, aes(x = z)) +
  geom_histogram(fill = "#1F77B4", alpha = 0.8, binwidth = 0.02, boundary = 0) +
  theme_minimal() +
  labs(title = "Distribution of Offensive Play Probabilities",
       x = "Probability",
       y = "Count") +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    axis.title = element_text(size = 12),
    axis.text = element_text(size = 10)
  )
dev.off()

# Read the GIMR data
gimr_data <- fread("gimr_off_grades.csv")

# Create GIMR distribution plot
png("offense_gimr_dist.png", width = 800, height = 600)
ggplot(gimr_data, aes(x = GIMR)) +
  geom_histogram(fill = "#2CA02C", alpha = 0.8, binwidth = 0.1, boundary = 0) +
  theme_minimal() +
  labs(title = "Distribution of Generalized Inverse Mills Ratio (GIMR)",
       x = "GIMR Value",
       y = "Count") +
  theme(
    plot.title = element_text(size = 16, face = "bold"),
    axis.title = element_text(size = 12),
    axis.text = element_text(size = 10)
  )
dev.off()
