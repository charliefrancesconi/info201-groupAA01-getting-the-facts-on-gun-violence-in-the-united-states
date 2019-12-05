library("dplyr")
library("plotly")

### This script is used to clean the data and create functions for later use

## Data Cleaning
#Import raw csv
raw_data <- read.csv("data/original_raw_data.csv")

# Remove na values
data_no_na <- na.omit(raw_data)

# Create new dataset with better formatted data
clean_data <- select(data_no_na, -X, -hispanic) %>%
  mutate(month = month.abb[month], police = lapply(police, as.logical))

## Dataframes and Variables
race_names <- unique(clean_data$race)

intent_names <- unique(clean_data$intent)
  