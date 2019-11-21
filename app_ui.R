# load libraries
library("shiny")
library("plotly")

source("scripts/Histogram.R")

# bar chart sidebar
hist_sidebar_content <- sidebarPanel(
  sliderInput(
    inputId = "hist_size",
    label = "Size of hist bars",
    min = 0,
    max = 1,
    value = 0.5,
    step = 0.1
  ),
  selectInput(
    inputId = "hist_color",
    label = "Color of bars",
    choices = c(
      "blue", "red", "forestgreen",
      "black", "deeppink"
    ),
    selected = "forestgreen"
  )
)

# plot
hist_main_content <- mainPanel(
  plotlyOutput(
    outputId = "plot"
  )
)

# overview "page"
overview_panel <- tabPanel(
  "Project Overview",
  )

# bar chart "page"
hist_panel <- tabPanel(
  "People Impacted Bar Chart",
  titlePanel("Yes rename this"),
  sidebarLayout(
    hist_sidebar_content,
    hist_main_content
  )
)

ui <- navbarPage(
  "Gun Violence in the US Analysis",
  overview_panel,
  hist_panel
)
