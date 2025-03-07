# Load libraries
library(ggplot2)

# Load dataset
df <- iris

#visualisation 1: Sepal Length vs Sepal Width
ggplot(df, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point() +
  labs(title = "Sepal Length vs Sepal Width")
ggsave("visualisation 1.png")

# visualisation 2: Petal Length by Species
ggplot(df, aes(x = Species, y = Petal.Length, fill = Species)) +
  geom_boxplot() +
  labs(title = "Petal Length Distribution")
ggsave("visualisation 2.png")

# Insights
cat("Insights:\n- Sepal Length vs Sepal Width varies by species.\n- Setosa has the shortest Petal Length, Virginica the longest.\n")

