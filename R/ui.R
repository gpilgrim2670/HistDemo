#' main app ui
#'
#'
#' @return shiny ui
#' @export
#'
app_ui <- function(){

# Define UI for application that draws a histogram
shiny::fluidPage(

    # Application title
    shiny::titlePanel("Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins
    shiny::sidebarLayout(
        shiny::sidebarPanel(
            shiny::sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),

        # Show a plot of the generated distribution
        shiny::mainPanel(
            shiny::plotOutput("distPlot")
        )
    )
)
}
