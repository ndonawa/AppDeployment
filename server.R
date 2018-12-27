library(shiny)
file <- read.csv("gdp.csv")
colnames(file)[3:14] <- c("2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017")
min  <- min(file[,3:14])
max <-  max(file[,3:14])
gdproj9 <- file


shinyServer(

         function(input, output){


        output$myhist <-renderPlot({
        colm1 <- as.numeric(input$Year)
        hist(gdproj9[,colm1], breaks = input$bins +1, l = 10, col = input$color, main = "Country GDP Growth", xlab = "Frequency of Countries by GDP Growth")
                })

        output$Documentation <- renderPrint({
                "1. Choose a year for GDP growth. 2.Select the amount of bins for the frequency of countries by % of year over year gdp growth.3.The histogram will update to show how many countries, produced GDP at different levels."
                })
         }
)
