library(readxl)
library(tidyr)
library(dplyr)
library(forcats)
library(janitor)
library(stringr)

data_path <- './data/mdsf_2022-03-31.xlsx'

# read-data
mdsf_data <- read_xlsx(data_path, col_types = 'text')

#clean up column names to use snake case only
#change certain columns to factors
#change service_towns to title case
#create column combining all address lines into single column
mdsf_data <-
  mdsf_data %>% 
  clean_names() %>% 
  mutate(across(c("care_service", "subtype", "service_type", "service_status"), as_factor)) %>% 
  mutate(service_town = str_to_title(service_town)) %>% 
  unite(col = "address_combo", address_line_1:address_line_4, sep = ", ", remove = FALSE, na.rm = TRUE)
