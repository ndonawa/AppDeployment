library(shiny)
 shinyUI(fluidPage(
        titlePanel(title = h4("Analysis of GDP by Country", align = "center")),
        sidebarLayout(
                ##SidebarPanel
                sidebarPanel(
                selectInput("Year", "Select the variable from growth dataset",
                                   choices = c("2006" = 3, "2007" = 4, "2008" = 5, "2009" = 6, "2010" = 7,
                                               "2011" = 8, "2012" = 9, "2013" = 10, "2014" = 11, "2015" = 12, "2016" = 13, "2017" =14)),
                br(),
                sliderInput("bins", "Select number of bins for histogram", min = 5, max = 25, value = 15),
                br(),
                radioButtons("color", "Select color of histogram", choices = c("Gray", "Blue", "Red"), selected = "Gray")

                ),

                #Main Panel
                mainPanel(
                       plotOutput("myhist"),
                       tabsetPanel(type = "tab",
                                tabPanel("Documentation", verbatimTextOutput("Documentation"))
                       )
        )
        )
 )
)






