library(shiny)
file <- read.csv("gdp.csv")
colnames(file)[3:14] <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017")
gdproj9 <- file

 shinyUI(fluidPage(
        titlePanel(title = h4("Analysis of GDP by Country", align = "center")),
        sidebarLayout(
                ##SidebarPanel
                sidebarPanel(
                selectInput("Year", "Select the variable from growth dataset",
                                   choices = c("2006" = 3, "2007" = 4, "2008" = 5, "2009" = 6, "2010" = 7,
                                               "2011" = 8, "2012" = 9, "2013" = 10, "2014" = 11, "2015" = 12, "2016" = 13, "2017" =14)),
                br(),
                sliderInput("bins", "Select number of bins for histogram", min = 0, max = 50, value = 5),
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






