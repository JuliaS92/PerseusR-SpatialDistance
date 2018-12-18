# Spatial Distance package and PerseusR script


## Usage
The package SpatialDistance contains functions required for pairwise distance analysis of data profiles, including annotation and filtering of distances. One script is included that can be used from inside Perseus to retrieve the n shortest distances for a dataset.

This is meant to be used as a minimal, yet scaleable example for using the PerseusR API provided for Perseus:

https://github.com/jdrudolph/PerseusR

The code was developed together with Nick Del-Grosso, specifically for a 1 hour live-coding session to enable other scientists to use the PerseusR API. This means the code is not fully documented, as opposed to a full R package.

## Dependencies
R packages required: PerseusR, data.table, argparser and their respective dependencies

## Installation
In order to use this tool, clone the repository to your hard drive and install it using devtools, providing the path to the package as a source.

The script can be moved around freely and e.g. be added to your personal collection of PerseusR packages.

To get help on input arguments call the Rscript from a regular terminal with the argument '-–help'.

## Test your setup
To try whether everything works in Perseus, you can follow these steps:

 - Generate a random matrix with the default parameters
 - Launch External > Matrix=>R
 - Browse for FitlerTopDistances.R
 - provide ‘–id Name’ as additional argument
