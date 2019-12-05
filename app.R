# load shiny library
library("shiny")

# source ui and server
source("app_ui.R")
source("app_server.R")

# host shiny app
shinyApp(ui = ui, server = server)
