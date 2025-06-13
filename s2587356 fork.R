
# Load library
library(readxl) 
library(janitor)
library(ggplot2)
library(forcats)

# Import dataset
mdsf_2022_03_31 <- read_excel("data/mdsf_2022-03-31.xlsx") |> 
  clean_names() # clean to lower snake case

head(mdsf_2022_03_31)
str(mdsf_2022_03_31)


# mdsf_2022_03_31 <- mdsf_2022_03_31 %>%
# mutate(across(where(is.character), as.factor))

# column names
colnames(mdsf_2022_03_31)

# Compute sum of NA for each columns
colSums(is.na(mdsf_2022_03_31))

# count NA for All columns
sum(is.na(mdsf_2022_03_31))

# cheack unique groups in service_type
unique(mdsf_2022_03_31$service_type)

# Plot count of servic_types
ggplot(mdsf_2022_03_31, aes(fct_infreq(service_type))) + geom_bar()


# Brief overview of the dataset. Thank you!!