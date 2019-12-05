source("analysis.R")

library(shiny)
library(dplyr)
library("DT")

data_used_table <- function() {
  data_used_table <- select(clean_data, year, intent, age, race)
}

data_used_table2 <- select(clean_data, year, intent, age, race)
