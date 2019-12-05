source("analysis.R")

library(shiny)
library(plotly)
library(dplyr)

bar_chart <- function() {
  plot_data <- select(clean_data, race) %>%
    group_by(race) %>% 
    summarize(total_deaths = n())
  
  
  p <- plot_ly( plot_data,
                x = ~race,
                y = ~total_deaths,
                name = "Causes",
                type = "bar"
  )
}

