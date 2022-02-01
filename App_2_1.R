library(shiny)

ui <- fluidPage(
  h1('plot title'),
  plotOutput('mtcars')
)

server <- function(input, output, session) {
  output$mtcars <- renderPlot(hist(mtcars$hp))
}

shinyApp(ui, server)