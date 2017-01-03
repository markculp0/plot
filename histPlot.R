# My histogram

# Measurements in centimeters for 50 flowers
# Species: setosa, versicolor, virginica 
data("iris")


# Create basic Histogram, breaks fm 4 to 8 in 1/2 centimeters (8)
hist(iris$Sepal.Length, xlab = "Sepal Length", main = "Histogram of Sepal Lengths")

# Fun w breaks: Single num, vector w brkpts, or a fn
hist(iris$Sepal.Length, breaks = 4, xlab = "SL", main = "Hist w 4 Breaks")
hist(iris$Sepal.Length, breaks = c(4, 5.2, 6.8, 8), xlab = "SL", main = "Hist w 3 Breaks")



