library(tidyverse)
library(readxl)
mdsf_description <- read_xlsx('mdsf_2022-03-31.xlsx')
#this does not work corectly because I only get the first tab loaded!
#Sheet 2
mdsf_adult <- read_excel('mdsf_2022-03-31.xlsx', sheet = 2)
mdsf_adult_clean <- mdsf_adult[9:10,]
colnames(mdsf_adult_clean)<- mdsf_adult[8,]
#Sheet 3
mdsf_home <- read_excel('mdsf_2022-03-31.xlsx', sheet = 3)
mdsf_home_clean <- mdsf_home[9:29,]
colnames(mdsf_home_clean)<- mdsf_home[8,]
#Sheet 4
mdsf_child <- read_excel('mdsf_2022-03-31.xlsx', sheet = 4)
mdsf_child_clean <- mdsf_child[9,]
colnames(mdsf_child_clean)<- mdsf_child[8,]
#Sheet 5
mdsf_mind <- read_excel('mdsf_2022-03-31.xlsx', sheet = 5)
mdsf_mind_clean <- mdsf_mind[9:74,]
colnames(mdsf_mind_clean)<- mdsf_mind[8,]
#Sheet 6
mdsf_day <- read_excel('mdsf_2022-03-31.xlsx', sheet = 6)
mdsf_day_clean <- mdsf_day[9:63,]
colnames(mdsf_day_clean)<- mdsf_day[8,]
#Sheet 7
mdsf_foster <- read_excel('mdsf_2022-03-31.xlsx', sheet = 7)
mdsf_foster_clean <- mdsf_foster[9:10,]
colnames(mdsf_foster_clean)<- mdsf_foster[8,]
#Sheet 8
mdsf_house <- read_excel('mdsf_2022-03-31.xlsx', sheet = 8)
mdsf_house_clean <- mdsf_house[9:28,]
colnames(mdsf_house_clean)<- mdsf_house[8,]
#Sheet 9
mdsf_nurse <- read_excel('mdsf_2022-03-31.xlsx', sheet = 9)
mdsf_nurse_clean <- mdsf_nurse[9:11,]
colnames(mdsf_nurse_clean)<- mdsf_nurse[8,]
#Sheet 10
mdsf_support <- read_excel('mdsf_2022-03-31.xlsx', sheet = 10)
mdsf_support_clean <- mdsf_support[9:37,]
colnames(mdsf_support_clean)<- mdsf_support[8,]

#Now we can merge all the sheets into one same dataframe
library(dplyr)
mdsf_clean <- bind_rows(mdsf_adult_clean,
                        mdsf_home_clean,
                        mdsf_child_clean,
                        mdsf_mind_clean,
                        mdsf_day_clean,
                        mdsf_foster_clean,
                        mdsf_house_clean,
                        mdsf_nurse_clean,
                        mdsf_support_clean)
#Amend adress lines, there is one extra column for only 1 observations - should be line1
mdsf_clean <- mdsf_clean %>% 
  mutate(address = coalesce(address, Line_1))
mdsf_clean <- mdsf_clean %>% 
  select(-Line_1)
#rename all columns correctly
print(colnames(mdsf_clean))
colnames(mdsf_clean) <- c("CSNumber","CareService","Subtype","ServiceType",              
                          "ServiceName","Address","ManagerName","Service_Phone_Number",      
                          "Eforms_email_address","ServiceProvider","ServiceStatus","Date_Reg",                  
                          "SIMD_rank","SIMD2020_Decile","Integration_Authority_Name","address_line1",                  
                          "address_line_2","address_line_3","address_line_4","Service_Town" )
