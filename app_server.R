# source scripts files
source("scripts/Histogram.R")

server <- function(input, output) {
  output$plot <- renderPlotly({
    return(histogram(
      s_df,
      input$hist_size,
      input$hist_color
    ))
  })
}