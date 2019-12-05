# Source script files
source("scripts/pie_chart.R")
source("scripts/bar_chart.R")
source("scripts/table.R")
source("scripts/scatter_plot.R")

library("DT")

# Compile server
server <- function(input, output) {
  output$bar_chart <- renderPlotly({
    bar_chart()})
  output$pie_chart <- renderPlotly({
    pie_chart(input$race_select)})
  output$scatter_plot <- renderPlotly({
    scatter_plot(input$intent_radio)})
  output$used_table <- DT::renderDataTable({
    data_used_table2})
}
