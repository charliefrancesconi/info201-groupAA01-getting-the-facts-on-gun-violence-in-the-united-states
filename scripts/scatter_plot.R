source("analysis.R")

library(shiny)
library(plotly)
library(dplyr)

scatter_plot <- function(selected_intent =  "Suicide") {
  plot_data <- select(clean_data, age, intent) %>%
    group_by(age, intent) %>%
    summarize(total_deaths = n()) %>% 
    filter(intent == selected_intent)
  
  p <- plot_ly(plot_data, x = ~age, y = ~total_deaths,
               type = "scatter", mode = "markers", color = ~intent, name = selected_intent)
  return(p)
}