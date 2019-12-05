#source analysis
source("analysis.R")

# load libraries
library("shiny")
library("plotly")
library("shinythemes")
library("DT")
library("markdown")


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

