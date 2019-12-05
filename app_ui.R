#source analysis
source("analysis.R")

# load libraries
library("shiny")
library("plotly")
library("shinythemes")
library("DT")
library("markdown")

<<<<<<< HEAD

## Tab Panels
introduction_panel <- tabPanel("Project Introduction",
                               includeMarkdown("project_introduction.md"))
background_panel <- tabPanel("Background",
                             includeMarkdown("background.md"))
bar_charts_panel <- tabPanel("Race vs Intent Analysis",
                             sidebarLayout(
                               sidebarPanel( 
                                 selectInput("race_select",
                                             label = h3("Select a Race"),
                                             choices = race_names,
                                             selected = 1)),
                               mainPanel(
                                 h1("Data Analysis"),
                                 h2("Bar Chart of Total Deaths by Race"),
                                 plotlyOutput("bar_chart", width = "100%", height = "400px"),
                                 h3("Findings:"),
                                 p("By race, white people are most effected by gun violence.
                                    Further research into this finding drew us to conclude
                                    that this is proportional to the United States racial
                                    groups. During this research we found that one race 
                                    is not proportional. dispite being 13% of the population,
                                    Black people represeneted more than 15% of deaths due to
                                    gun violence."),
                                 h2("Pie Chart of Deaths by Intent & Selected Race"),
                                 plotlyOutput("pie_chart", width = "100%", height = "400px"),
                                 h3("Findings:"),
                                 p("This pie chart provided further insight into our findings
                                   about white and black deaths. The majority of white deaths,
                                   around 80%, are due to suicide. The majority of black deaths, 
                                   around 80%, are due to homicide."))))

scatter_plot_panel <- tabPanel("Age vs Intent Analysis",
                               sidebarLayout(
                                 sidebarPanel( 
                                   radioButtons("intent_radio",
                                                label = h3("Select an Intent"),
                                                choices = intent_names, 
                                                selected = intent_names[1])),
                                 mainPanel(
                                   h1("Age vs Intent Analysis"),
                                   h2("Scatter Plot of Age vs Intent"),
                                   plotlyOutput("scatter_plot", width = "100%", height = "400px"),
                                   h3("Findings:"),
                                   p("This plot shows the total deaths from the selected intent
                                    at each age. For each intent we can see that the majority
                                    of deaths happen around late teens/ early 20s (18-22). We
                                    hypothesize that this is a result of alchoholic consumption
                                    legalized around this age, combined with the ability to own
                                    smaller firearms. Although this trend is apparent in all
                                    of the intents there is a second higher spike in deaths around
                                    ages 50-55 for suicide only. We belive this could be a result
                                    of midlife crisses at this age."))))
                  

table_panel <- tabPanel("Full Data Table",
                        sidebarLayout(
                          sidebarPanel(
                            h3("Raw Data"),
                            p("Initally the raw data table included more columns
                              and many NA values."),
                            h3("Cleaned Data"),
                            p("To clean the data we removed columns with incomprehensive
                              data and filtered out rows with NA values."),
                            h3("Used Data"),
                            p("Finally the columns with age, race, and intent 
                              data were selected for use in analysis and
                              visualization. Years were also selected to highlight
                              the timeframe the dataset provides information for.")
                          ),
                          mainPanel(
                            h1("Data Used for Visualizations:"),
                            DT::dataTableOutput("used_table")
                            )))
=======
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
>>>>>>> f548ff4633072fc9b8b448cf0f0bfe7f319a72c7

tech_panel <- tabPanel("Technical Descriptions",
                       includeMarkdown("technical_descriptions.md"))
about_panel <- tabPanel("About the Team & Appendix",
                        includeMarkdown("team_bios_appendix.md"))
## Complied navbarMenu
plot_menu <- navbarMenu("Data Analysis",
                        bar_charts_panel,
                        scatter_plot_panel,
                        table_panel)
                        
## Complied UI
ui <- navbarPage("Getting the Facts on Gun Violence in the United States",
                 #theme = shinytheme("superhero"), Theme does not work with data table :(
                 introduction_panel,
                 background_panel,
                 plot_menu,
                 tech_panel,
                 about_panel
)

<<<<<<< HEAD
=======
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
>>>>>>> f548ff4633072fc9b8b448cf0f0bfe7f319a72c7
