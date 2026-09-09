# FINTB4052BEF — starter R analysis
# This file is intentionally simple: it verifies that GitHub Actions
# can run R and return both a graph and a table as downloadable outputs.

dir.create("output", showWarnings = FALSE, recursive = TRUE)

# Starter dataset included with R
df <- mtcars

# Save a numerical summary
summary_table <- data.frame(
  variable = c("mpg", "hp", "wt"),
  mean = c(mean(df$mpg), mean(df$hp), mean(df$wt)),
  sd = c(sd(df$mpg), sd(df$hp), sd(df$wt))
)

write.csv(
  summary_table,
  "output/mtcars_summary.csv",
  row.names = FALSE
)

# Save a graph as PNG
png(
  filename = "output/pipeline_test.png",
  width = 1600,
  height = 1000,
  res = 160
)

plot(
  df$wt,
  df$mpg,
  main = "GitHub R Pipeline Test",
  xlab = "Weight (1000 lbs)",
  ylab = "Miles per gallon",
  pch = 19
)

model <- lm(mpg ~ wt, data = df)
abline(model, lwd = 2)

dev.off()

cat("R analysis completed successfully.\n")
cat("Created output/pipeline_test.png\n")
cat("Created output/mtcars_summary.csv\n")
