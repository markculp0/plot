# My boxplot

# Measurements in centimeters for 50 flowers
# Species: setosa, versicolor, virginica 
data("iris")

# Scientific notation off
options(scipen = 999) 

# Calculate median, range & 1st,3rd Quantile
median(iris$Sepal.Length) # 5.8
range(iris$Sepal.Length)  # 4.3 - 7.9

# Min. 1st Qu.  Median    Mean 3rd Qu.    Max.
# 4.300   5.100   5.800   5.843   6.400   7.900 
quantile(iris$Sepal.Length)

# Graph the info on boxplot
boxplot(iris$Sepal.Length)


# Graph 3 boxplots: Sep len over the 3 species
boxplot(iris$Sepal.Length ~ iris$Species)
# or
boxplot(Sepal.Length ~ Species, data = iris, col = "yellow")

