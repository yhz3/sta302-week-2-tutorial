#### Preamble ####
# Purpose: Creates a graph using the cleaned data
# Author: Ethan Cheung
# Date: Jan 16 2024
# Contact: ethan.cheung@utoronto.ca
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)

### Creating Graph ###
analysis_data <- read_csv("outputs/data/analysis_data.csv")

# Converting dates column so that they will be arranged by order in csv, not alphabetically
analysis_data$date_mmm_yy <- 
  factor(analysis_data$date_mmm_yy, levels = unique(analysis_data$date_mmm_yy))

graph <-
  analysis_data |>
  ggplot(mapping = aes(x = date_mmm_yy, y = actively_homeless)) +
  geom_bar(stat = "identity")

ggsave("graph.jpg")
