# load shiny library
library("shiny")

# source the server and ui files
source("app_ui.R")
source("app_server.R")

# host shiny app
shinyApp(ui = ui, server = server)
