# Source script files
source("scripts/pie_chart.R")
source("scripts/bar_chart.R")
source("scripts/table.R")
source("scripts/scatter_plot.R")

library("DT")

# Compile server
server <- function(input, output) {
<<<<<<< HEAD
  output$bar_chart <- renderPlotly({
    bar_chart()})
  output$pie_chart <- renderPlotly({
    pie_chart(input$race_select)})
  output$scatter_plot <- renderPlotly({
    scatter_plot(input$intent_radio)})
  output$used_table <- DT::renderDataTable({
    data_used_table2})
}
=======
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
>>>>>>> f548ff4633072fc9b8b448cf0f0bfe7f319a72c7
