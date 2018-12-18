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

# Analyse data
#distances <- pairwise_distances(data)
#distances_annotated <- annotate_distances(distances, id)
#result <- filterTopn(distances_annotated, topn)

# Write Perseus output
