library(shiny)

shinyServer(

         function(input, output){


        output$myhist <-renderPlot({
        colm <- as.numeric(input$Year)
        hist(gdproj9[,colm], breaks = seq(min(gdproj9[,colm]), max(gdproj9[,colm]), l = input$bins +1), col = input$color, main = "Country GDP Growth", xlab = "Frequency of Countries by GDP Growth")
                })

        output$Documentation <- renderPrint({
                "1. Choose a year for GDP growth. 2.Select the amount of bins for the frequency of countries by % of year over year gdp growth.3.The histogram will update to show how many countries, produced GDP at different levels."
                })
         }
)
