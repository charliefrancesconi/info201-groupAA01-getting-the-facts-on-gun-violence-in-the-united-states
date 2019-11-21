s_df <- read.csv(file = "data/s_df_no_map.csv",header = TRUE, stringsAsFactors = FALSE)

library(shiny)
library(stringr)
library(plotly)
library(dplyr)
library(ggplot2)

histogram <- function(s_df, size, color) {
  
  x_axis <- s_df%>%
    group_by(state)%>%
    summarize(total = sum(total_killed + total_injured))
  
  p <- plot_ly(x_axis) %>%
    add_bars(
      x = ~state,
      y = ~total,
      color = I(color),
      width = as.numeric(size)
    ) %>%
    layout(
      yaxis = list(title = paste("Total impacted number")),
      title = paste(str_to_title("Total impacted Count Per Each State")
      ))
}
p



