# This script takes the raw data and makes it more usable for the support vector machine classification


library(tidyverse)

# text library of choice
library(tidytext)

# gutenbergr provides tools to work with texts from Project Gutenberg
library("gutenbergr")

# search the Gutenberg library for the book and get the id of the first entry
id <- gutenberg_works(title=="The Federalist Papers")$gutenberg_id[[1]]

# download the book
federalist <- gutenberg_download(id)

# convert to table based on frequency of words
bagwords <- federalist %>%
  