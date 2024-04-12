# Install and load the dbscan package if you haven't already
install.packages("dbscan")
library(dbscan)

# Generate some random data
set.seed(123)
data <- matrix(rnorm(200), ncol = 2)

# Run DBSCAN clustering
dbscan_result <- dbscan(data, eps = 0.3, minPts = 5)

# Cluster assignments
cluster_labels <- dbscan_result$cluster

# Plot the clusters
plot(data, col = cluster_labels, pch = 19, main = "DBSCAN Clustering")
