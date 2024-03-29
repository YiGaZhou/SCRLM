# Scalable Clustering: Large Scale Unsupervised Learning of Gaussian Mixture Models with Outliers    [[Paper]](https://arxiv.org/abs/2302.14599)

## Abstract
Clustering is a widely used technique with a long and rich history in a variety of areas. However, most existing algorithms do not scale well to large datasets, or are missing theoretical guarantees of convergence. We introduce a provably robust clustering algorithm based on loss minimization that performs well on Gaussian mixture models with outliers. We also provide theoretical guarantees that the algorithm obtains high accuracy with high probability under certain assumptions. Moreover, it can also be used as an initialization strategy for $k$-means clustering. 
Experiments on real-world large-scale datasets demonstrate the effectiveness of the algorithm when clustering a large number of clusters, and a $k$-means algorithm initialized by the algorithm outperforms many of the classic clustering methods in both speed and accuracy, while scaling well to large datasets such as ImageNet.

## Proposed Gaussian Mixture Model with Outliers

A Gaussian mixture model with outliers is a weighted sum of $m$ component Gaussian densities and outliers,

$$p(\mathbf{x} \mid \Theta)=\sum_{i=1} ^{m} w_{i} \mathcal{N}\left(\mathbf{x} \mid \mu_i, \sigma_i\right) +w_{-1} O(\mathbf{x})$$

Each component density is a $p$-variate Gaussian function of the form,

$$ \mathcal{N} \left( \mathbf{x} \mid \mu_i, \sigma_i \right) = \frac{1}{(2 \pi)^{p / 2} |\sigma_i^2 I_p|^{1 / 2}} \exp \left( -\frac{1}{2 \sigma_i^2}\left\||\mathbf{x}-\mu_i| \right\|^2 \right)$$

The distribution of outliers is given by,

$$ O(\mathbf{x})=\mathcal{N}(0,I_{p})$$

## Datasets

### Data Preprocessing

#### See [Feature_Extraction](./Feature_Extraction) for more details

### Real Datasets
                                | MNIST | CIFAR-10 | CIFAR-100 | ImageNet validation | ImageNet train |
     p (dimension)              | 512   |   4096   |   4096    |         640         |     640        |
     N (number of observations) | 60000 |   50000  |   50000   |         50000       |     1281167    |
     m (number of clusters)     | 10    |   10     |   100     |         1000        |     1000       |

## Experiments


### Comparison of Observed and Theoretical Accuracy

#### See [test_bounds](./test_results/test_bounds/) for more details.

### Comparison with other clustering methods

1. $k$-means++ 
2. Robust $k$-means++
3. Spectral Clustering (SC) 
4. Tensor Decomposition (TD) 
5. Expectation Maximization (EM) 
6. Complete Linkage Clustering (CL) 
7. $t$-Distributed Stochastic Neighbor Embedding ($t$-SNE) 

#### See [test_results](./test_results) for more details.