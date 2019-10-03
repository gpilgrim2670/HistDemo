#` server
#`
#' main server of app
#'
#' @author Greg Pilgrim
#'
#' @import shiny
#'
#' @param input shiny input
#' @param output shiny output
#' @param session shiny session
#'
#' @return shiny server
#' @export

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$distPlot <- renderPlot({

        # generate bins based on input$bins from ui.R
        x    <- faithful[, 2]
        bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'darkgray', border = 'white')

    })

})
