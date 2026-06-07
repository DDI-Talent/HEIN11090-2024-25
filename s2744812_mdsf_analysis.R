library(dplyr)
library(ggplot2)
library(readxl)
library(janitor)


data_path <- './data/mdsf_2022-03-31.xlsx'

# read-data
mdsf_data <- read_xlsx(data_path)

# data wrangling
mdsf_data_clean <- mdsf_data %>% 
  # change columns that should be numeric to numeric
  mutate(DateReg = as.numeric(DateReg),
         SIMD_rank = as.numeric(SIMD_rank),
         SIMD2020_Decile = as.numeric(SIMD2020_Decile)
         ) %>% 
  # turn excel number to date
  mutate(DateReg = excel_numeric_to_date(DateReg, 
                                         date_system = "modern",
                                         include_time = FALSE))

# clean column names
mdsf_data_clean <- mdsf_data_clean %>% 
  clean_names()

