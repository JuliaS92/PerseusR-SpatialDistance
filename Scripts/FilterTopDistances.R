# Parse Input from Perseus
argv <- commandArgs(trailingOnly = TRUE)

library(argparser)

p <- arg_parser(description = 'Parse arguments from Perseus')
p <- add_argument(p, '--id', default='Majority.protein.IDs',
                  help='Column name for unique row identifiers')
p <- add_argument(p, '--topn', default=100,
                  help='Number of shortest distances to return')
p <- add_argument(p, 'infile', help='Do not touch, comes from Perseus')
p <- add_argument(p, 'outfile', help='Do not touch, comes from Perseus')

argp <- parse_args(p, argv)

# Read data input
library(PerseusR)
data_perseus <- read.perseus(argp$infile)
data <- main(data_perseus)
annotations <- annotCols(data_perseus)

# Extract id column
stopifnot(argp$id %in% names(annotations))
id <- annotations[[argp$id]]

# Analyse data
library(SpatialDistance)
distances <- pairwise_distances(data)
distances_annotated <- annotate_distances(distances, id)
result <- filter_topn(distances_annotated, argp$topn)

# Write Perseus output
output <- matrixData(main = result['distance'],
                     annotCols = result[c('id_1', 'id_2')])
write.perseus(output, argp$outfile)
