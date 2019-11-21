# load libraries
library("shiny")
library("plotly")

source("scripts/Histogram.R")
source("scripts/table.R")

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
  h1("Project Overview"),
  h3("Project: A data driven state by state insight
     into who uses guns and what they use them for."),
  h4("\tProject Members: April Lee, Charlie Francesconi, Bryan Bernardi, Zhijian Zheng")
  )

#table "page"
table_sidebar_content <- sidebarPanel(
  conditionalPanel(
    'input.dataset === "shooting_dataset"',
    checkboxGroupInput("show_vars", "Columns in dataframe to show:",
                       names(shooting_dataset), selected = names(shooting_dataset))
  )
)

table_main_content <- mainPanel(
  tabsetPanel(
    id = 'dataset',
    tabPanel("shooting_dataset", DT::dataTableOutput("mytable1"))
  )
)

table_panel <- tabPanel(
  "Shootings Table",
  titlePanel("Table Filter"),
  sidebarLayout(
    table_sidebar_content,
    table_main_content
  )
)

# bar chart "page"
hist_panel <- tabPanel(
  "People Impacted Bar Chart",
  titlePanel("Interactive Bar Chart"),
  sidebarLayout(
    hist_sidebar_content,
    hist_main_content
  )
)

ui <- navbarPage(
  "Gun Violence in the US Analysis",
  overview_panel,
  hist_panel,
  table_panel
)
