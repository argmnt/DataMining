install.packages("arules")
install.packages("arulesViz")
library(arules)
library(arulesViz)
library(readr)
groceries <- read_csv("~/Downloads/groceries.csv")
data(groceries)

itemsets <- apriori(groceries,
                    parameter = list(support = 0.02,
                                     target="frequent itemsets",
                                     minlen = 3))
inspect(itemsets)

iris.scaled <- scale(iris[, -5])
# K-means clustering
set.seed(99999)
km.res <- kmeans(iris.scaled, 3, nstart = 25)
# k-means group number of each observation
km.res$cluster
head(km.res$cluster, 1000)
fviz_cluster(km.res, data = iris.scaled, geom = "point",
             stand = FALSE, frame.type = "norm")