# Install and load the fpc package if you haven't already
install.packages("fpc")
library(fpc)

# Generate some random data
set.seed(123)
data <- matrix(rnorm(200), ncol = 2)

# Number of clusters
k <- 3

# Run PAM clustering
pam_result <- pamk(data, k = k)

# Cluster assignments
cluster_labels <- pam_result$pamobject$clustering

# Medoids
medoids <- pam_result$pamobject$medoids

# Plot the clusters
plot(data, col = cluster_labels, pch = 19, main = "PAM Clustering")
points(medoids, col = 1:k, pch = 3, cex = 2)
