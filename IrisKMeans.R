####Iris kmeans
library(factoextra)
library(ggplot2)
iris.scaled <- scale(iris)
cluster <- kmeans(iris.scaled, 5, nstart=20)
fviz_cluster(cluster, data=iris.scaled, type.frame="norm")
####################