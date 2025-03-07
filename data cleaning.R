# Load dataset 
data("iris")  
df <- iris

# Check for missing values
print(summary(df))
print(colSums(is.na(df))) 

# Handle missing values (if using 'airquality')
if ("airquality" %in% ls()) {
  df$Ozone[is.na(df$Ozone)] <- mean(df$Ozone, na.rm = TRUE) }

# Transform at least one variable
df$Sepal.Area <- df$Sepal.Length * df$Sepal.Width 

# Summary statistics table
library(dplyr)
summary_table <- df %>%
  summarise(
    avg_sepal_length = mean(Sepal.Length),
    max_sepal_width = max(Sepal.Width),
    min_petal_length = min(Petal.Length),
    avg_sepal_width = mean(Sepal.Width)
  )

print(summary_table)



