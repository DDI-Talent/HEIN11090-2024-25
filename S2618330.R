library(dplyr)
library(ggplot2)
library(readxl)
library(janitor)


data_path <- './data/mdsf_2022-03-31.xlsx'

# read-data
mdsf_data <- read_xlsx(data_path, col_types = 'text')

# service-type-count
service_summary <- mdsf_data %>%
  group_by(ServiceType) %>%
  summarise(
    count = n()
  )