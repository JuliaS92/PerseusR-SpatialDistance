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

#' Annotate distances with identifiers
annotate_distances <- function(distances, id) {
  distances_df <- data.frame(distances)
  names(distances_df) <- id
  distances_df$id_1 <- id

  require(data.table)
  distances_m <- melt(as.data.table(distances_df), value.name = 'distance', variable.name = 'id_2', id.vars = 'id_1',
       na.rm = TRUE)

  return(distances_m)
}
