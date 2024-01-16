#### Preamble ####
# Purpose: Cleans the raw homeless data recorded by opendatatoronto
# Author: Ethan Cheung
# Date: Jan 16 2024
# Contact: ethan.cheung@utoronto.ca
# License: MIT

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
