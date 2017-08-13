# Let's perform K-means clustering (unsupervised learning) on a widely used 
# dataset, iris.”

# This dataset consists of three different species of iris (Setosa, 
# Versicolor, and Virginica) along with their distinct features such as sepal
# length, sepal width, petal length, and petal width:

data(iris)
head(iris)

# The following plots show the variation of features across irises. Petal 
# features show a distinct variation as against sepal features:

library(ggplot2)
library(gridExtra)
plot1 <- ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + 
  geom_point(size = 2) + ggtitle('Variation by Sepal features')
plot2 <- ggplot(iris, aes(Petal.Length, Petal.Width, color = Species)) +
  geom_point(size = 2) + ggtitle('Variation by Petal features')
grid.arrange(plot1, plot2, ncol = 2)

# As petal features show a good variation across irises, let's perform K-means 
# clustering using the petal length and petal width

set.seed(1234567)
iris.cluster <- kmeans(iris[, c('Petal.Length', 'Petal.Width')], 3, 
                       nstart = 10)
iris.cluster$cluster <- as.factor(iris.cluster$cluster)

# The following code snippet shows a cross-tab between clusters and species 
# (irises). We can see that cluster 1 is primarily attributed with setosa, 
# cluster 2 with versicolor, and cluster 3 with virginica

table(cluster = iris.cluster$cluster, species = iris$Species)
ggplot(iris, aes(Petal.Length, Petal.Width, color = iris.cluster$cluster)) +
  geom_point() + ggtitle('Variation by Clusters')