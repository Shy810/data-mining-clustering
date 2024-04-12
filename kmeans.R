# Generate some random data
set.seed(123)
data <- matrix(rnorm(200), ncol = 2)

# Number of clusters
k <- 3

# Run k-means algorithm
kmeans_result <- kmeans(data, centers = k)

# Cluster assignments
cluster_labels <- kmeans_result$cluster

# Centroids
centroids <- kmeans_result$centers

# Plot the clusters
plot(data, col = cluster_labels, pch = 19, main = "K-Means Clustering")
points(centroids, col = 1:k, pch = 3, cex = 2)
