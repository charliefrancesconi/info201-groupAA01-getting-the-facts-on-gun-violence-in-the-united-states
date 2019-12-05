source("analysis.R")

library(shiny)
library(plotly)
library(dplyr)

pie_chart <- function(selected_race = "White") {
  plot_data <- select(clean_data, race, intent) %>%
    group_by(race, intent) %>%
    summarize(totals = n()) %>%
    filter(race == selected_race)

  p <- plot_ly(plot_data, labels = ~intent, values = ~totals, type = 'pie') %>%
    layout(
           xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
           yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
  return(p)
}

