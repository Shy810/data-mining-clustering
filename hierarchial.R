# Generate some random data
set.seed(123)
data <- matrix(rnorm(200), ncol = 2)

# Compute distance matrix
distance_matrix <- dist(data)

# Perform hierarchical clustering
hc <- hclust(distance_matrix, method = "ward.D")

# Plot the dendrogram
plot(hc, main = "Hierarchical Clustering Dendrogram")

# Cut the dendrogram to get clusters
k <- 3
cluster_labels <- cutree(hc, k)

# Plot the data with cluster colors
plot(data, col = cluster_labels, pch = 19, main = "Hierarchical Clustering")
