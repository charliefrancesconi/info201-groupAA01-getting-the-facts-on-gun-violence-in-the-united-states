# load libraries
library("shiny")
library("plotly")

# load sources
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

# the histogram itself
hist_main_content <- mainPanel(
  plotlyOutput(
    outputId = "plot"
  )
)

# about "page"
about_panel <- tabPanel(
  "About Page",
  titlePanel("About Page"),
  navlistPanel(
    "Select Page",
    tabPanel(
      "Overview",
      h1("Project Overview"),
      p("Project: A data driven state by state insight
     into who uses guns and what they use them for."),
      p("Add more info here (as a md file)")
    ),
    tabPanel(
      "About us",
      h1("About us"),
      p("Insert pic + info for each member as a md file.")
    )
  )
)

# table sidebar content
table_sidebar_content <- sidebarPanel(
  conditionalPanel(
    'input.dataset ===
    "shooting_dataset"',
    checkboxGroupInput("show_vars", "Columns in dataframe to show:",
      names(shooting_dataset),
      selected = names(shooting_dataset)
    )
  )
)

# the actual table
table_main_content <- mainPanel(
  tabsetPanel(
    id = "dataset",
    tabPanel("shooting_dataset", DT::dataTableOutput("mytable1"))
  )
)

# shooting table "page"
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

# conclusion "page"
conclusion_panel <- tabPanel(
  "Conclusion",
  h1("Project Conclusion"),
  p("Our final conclusion as a md file here")
)


# ui navigation bar
ui <- navbarPage(
  "Gun Violence in the US Analysis",
  about_panel,
  hist_panel,
  table_panel,
  conclusion_panel
)