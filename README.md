# Scalable Clustering: Large Scale Unsupervised Learning of Gaussian Mixture Models with Outliers
## Abstract 
Clustering is a widely used technique with a long and rich history in a variety of areas. However, most existing algorithms do not scale well to large datasets, or are missing theoretical guarantees of convergence. We introduce a provably robust clustering algorithm based on loss minimization that performs well on Gaussian mixture models with outliers. We also provide theoretical guarantees that the algorithm obtains high accuracy with high probability under certain assumptions. Moreover, it can also be used as an initialization strategy for $k$-means clustering. 
Experiments on real-world large-scale datasets demonstrate the effectiveness of the algorithm when clustering a large number of clusters, and a $k$-means algorithm initialized by the algorithm outperforms many of the classic clustering methods in both speed and accuracy, while scaling well to large datasets such as ImageNet.

## Datasets
### Synthetic Datasets

### Real Datasets
| MNIST | CIFAR-10 | CIFAR-100 | ImageNet |
p | 512 | 4096| 4096 | 640 |