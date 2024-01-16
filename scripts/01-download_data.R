#### Preamble ####
# Purpose: Downloads and saves the data from [...UPDATE THIS...]
# Author: Ethan Cheung
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(janitor)
library(knitr)
library(lubridate)
library(opendatatoronto)
library(tidyverse)

#### Download data ####
package <- show_package("ac77f532-f18b-427c-905c-4ae87ce69c93")
package

resources <- list_package_resources("ac77f532-f18b-427c-905c-4ae87ce69c93")
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))
the_raw_data <- filter(datastore_resources, row_number()==1) %>% get_resource()

#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(the_raw_data, "inputs/data/raw_data.csv") 

         
