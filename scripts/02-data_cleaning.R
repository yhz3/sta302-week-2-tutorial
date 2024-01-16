#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers..... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 6 April 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

#### Workspace setup ####
library(tidyverse)
library(janitor)

#### Clean data ####
raw_data <- read_csv("inputs/data/raw_data.csv")
raw_data

cleaned_data <-
  raw_data |>
  janitor::clean_names() |>
  select(date_mmm_yy, population_group, actively_homeless) |>
  filter(population_group == "Youth")
# Too annoying to format date_mmm_yy into the date format (currently chr), 
# but the data is still organized chronologically so it's fine. Maybe do it 
# once I get better at R...

cleaned_data

#### Save data ####
write_csv(cleaned_data, "outputs/data/analysis_data.csv")
