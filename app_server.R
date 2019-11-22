# source scripts files
source("scripts/Histogram.R")
source("scripts/table.R")

server <- function(input, output) {
  # render histogram
  output$plot <- renderPlotly({
    return(histogram(
      s_df,
      input$hist_size,
      input$hist_color
    ))
  })
  # render table
  output$mytable1 <- DT::renderDataTable({
    DT::datatable(shooting_dataset[, input$show_vars, drop = FALSE])
  })
}