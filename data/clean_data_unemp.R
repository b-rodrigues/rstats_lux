library(brotools)
library(dplyr)
library(readr)
library(stringr)

setwd("static/data/")

datasets_paths <- list.files(pattern = "026*")

datasets_list <- read_list(datasets_paths, read_csv, skip = 2)
