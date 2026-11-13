# DATA PROJECT 

# Q1. Selecting a Dataset 
# The iris dataset is a built-in dataset available in R. 

# Loading the dataset 
data(iris)

# Save a copy of the dataset for submission
write.csv(iris, "iris.csv", row.names = FALSE)


# Q2. EXPLORING THE DATASET
# Reviewing the structure of the dataset
str(iris)
head(iris)
summary(iris)

# Identifying missing values or anomalies
sum(is.na(iris))

# Checking missing values for each variable
colSums(is.na(iris))

# Checking the number of observations and variables
dim(iris)


# Checking for potential outliers in the numerical variables
boxplot.stats(iris$Sepal.Length)$out
boxplot.stats(iris$Sepal.Width)$out
boxplot.stats(iris$Petal.Length)$out
boxplot.stats(iris$Petal.Width)$out


# Q3. Calculating Descriptive Statistics

# Calculating the mean, median, 
# variance and standard deviation for Sepal.Length

mean_sepal_length <- mean(iris$Sepal.Length, na.rm = TRUE)
median_sepal_length <- median(iris$Sepal.Length, na.rm = TRUE)
variance_sepal_length <- var(iris$Sepal.Length, na.rm = TRUE)
sd_sepal_length <- sd(iris$Sepal.Length, na.rm = TRUE)

# Displaying all Sepal.Length results together
list(
  Mean_Sepal_Length = mean_sepal_length,
  Median_Sepal_Length = median_sepal_length,
  Variance_Sepal_Length = variance_sepal_length,
  Standard_Deviation_Sepal_Length = sd_sepal_length
)


# Calculating the mean, median, 
# variance and standard deviation for Sepal.Width
mean_sepal_width <- mean(iris$Sepal.Width, na.rm = TRUE)
median_sepal_width <- median(iris$Sepal.Width, na.rm = TRUE)
variance_sepal_width <- var(iris$Sepal.Width, na.rm = TRUE)
sd_sepal_width <- sd(iris$Sepal.Width, na.rm = TRUE)

# Displaying all Sepal.Width results together
list(
  Mean_Sepal_Width = mean_sepal_width,
  Median_Sepal_Width = median_sepal_width,
  Variance_Sepal_Width = variance_sepal_width,
  Standard_Deviation_Sepal_Width = sd_sepal_width
)


# Calculating the mean, median, 
# variance and standard deviation for Petal.Length
mean_petal_length <- mean(iris$Petal.Length, na.rm = TRUE)
median_petal_length <- median(iris$Petal.Length, na.rm = TRUE)
variance_petal_length <- var(iris$Petal.Length, na.rm = TRUE)
sd_petal_length <- sd(iris$Petal.Length, na.rm = TRUE)

# Displaying all Petal.Length results together
list(
  Mean_Petal_Length = mean_petal_length,
  Median_Petal_Length = median_petal_length,
  Variance_Petal_Length = variance_petal_length,
  Standard_Deviation_Petal_Length = sd_petal_length
)


# Calculating the mean, median, 
# variance and standard deviation for Petal.Width
mean_petal_width <- mean(iris$Petal.Width, na.rm = TRUE)
median_petal_width <- median(iris$Petal.Width, na.rm = TRUE)
variance_petal_width <- var(iris$Petal.Width, na.rm = TRUE)
sd_petal_width <- sd(iris$Petal.Width, na.rm = TRUE)

# Displaying all Petal.Width results together
list(
  Mean_Petal_Width = mean_petal_width,
  Median_Petal_Width = median_petal_width,
  Variance_Petal_Width = variance_petal_width,
  Standard_Deviation_Petal_Width = sd_petal_width
)


# Q4. Group-Level Statistics By Categorical Value

# Species is the selected categorical value
# Sepal Length By Species
mean_sepal_length_species <- tapply(iris$Sepal.Length, iris$Species, mean, na.rm = TRUE)
var_sepal_length_species <- tapply(iris$Sepal.Length, iris$Species, var, na.rm = TRUE)

list(
  Mean_Sepal_Length = mean_sepal_length_species,
  Variance_Sepal_Length = var_sepal_length_species
)

# Sepal Width By Species
mean_sepal_width_species <- tapply(iris$Sepal.Width, iris$Species, mean, na.rm = TRUE)
var_sepal_width_species <- tapply(iris$Sepal.Width, iris$Species, var, na.rm = TRUE)

list(
  Mean_Sepal_Width = mean_sepal_width_species,
  Variance_Sepal_Width = var_sepal_width_species
)

# Petal Length By Species
mean_petal_length_species <- tapply(iris$Petal.Length, iris$Species, mean, na.rm = TRUE)
var_petal_length_species <- tapply(iris$Petal.Length, iris$Species, var, na.rm = TRUE)

list(
  Mean_Petal_Length = mean_petal_length_species,
  Variance_Petal_Length = var_petal_length_species
)

# Petal Width By Species
mean_petal_width_species <- tapply(iris$Petal.Width, iris$Species, mean, na.rm = TRUE)
var_petal_width_species <- tapply(iris$Petal.Width, iris$Species, var, na.rm = TRUE)

list(
  Mean_Petal_Width = mean_petal_width_species,
  Variance_Petal_Width = var_petal_width_species
)

#Q5. Creating the Visualizations

# Histogram of Petal Length
hist(
  iris$Petal.Length,
  main = "Distribution of Petal Length",
  xlab = "Petal Length",
  ylab = "Frequency",
  col = "lightgray",
  border = "black"
)


# Boxplots of Petal Length across the three species.

boxplot(
  Petal.Length ~ Species,
  data = iris,
  main = "Petal Length by Iris Species",
  xlab = "Species",
  ylab = "Petal Length",
  col = "lightgray"
)

# Scatterplot examining the relationship
# between Petal Length and Petal Width

plot(
  iris$Petal.Length,
  iris$Petal.Width,
  main = "Petal Length and Petal Width",
  xlab = "Petal Length",
  ylab = "Petal Width"
)
