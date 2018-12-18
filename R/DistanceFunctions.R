#' Pairwise distances between rows
#' @examples
#' data <- matrix(c(1,2,3,2,3,2), nrow=3)
#' pairwise_distances(data)
pairwise_distances <- function(data) {
  distances <- as.matrix(dist(data))

  distances[upper.tri(distances)] <- NA
  diag(distances) <- NA

  return(distances)
}
