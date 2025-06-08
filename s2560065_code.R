#Load necessary packages
library(tidyverse)

#Load dataset using URL from NHS Scotland
infant_feeding_raw <- read_csv("https://www.opendata.nhs.scot/dataset/164106cb-14ea-4a48-a553-aef2f7a90704/resource/fd82a04b-20f7-4ee3-be91-fcef729c6426/download/od_if_maternal_age_2024.csv")

#Explore dataset
colnames(infant_feeding_raw)
str(infant_feeding_raw)

infant_feeding_raw %>% 
  distinct(Review)

infant_feeding_raw %>% 
  distinct(FinancialYear)

infant_feeding_raw %>% 
  distinct(MotherAgeGroup)

#Choosing the variables and removing the unwanted observations
infant_feeding_clean <- infant_feeding_raw %>% 
  select(Review, 
         FinancialYear, 
         MotherAgeGroup, 
         CurrentFeedingExclusiveBreast, 
         CurrentFeedingFormula,) %>% 
  filter(MotherAgeGroup != "Invalid or missing")

  

