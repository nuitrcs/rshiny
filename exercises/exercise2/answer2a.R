# EXERCISE
# This is the answer file.  See app.R for the exercise


library(shiny)
library(readr)
library(ggplot2)

africadata <- read_csv("africadata.csv")

ui <- fluidPage(
  
  titlePanel("Africa: Country Size"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "yval", 
                  label = "Y-axis:",
                  choices = c("GDP" = "gdp_2017", "Population" = "pop_2017",
                                 "Railroads" = "rail", "Roads" = "road"),
                  selected = "gdp_2017")
    ),
    
    mainPanel(
      plotOutput("plot1")
    )
  ),  # Error 2: the comma here was missing
  
  verticalLayout(
    DT::dataTableOutput("datatable1")
  )
)

server <- function(input, output) {
  
  output$plot1 <- renderPlot({ # Error 2: output$plot didn't match outputId from above; instead of changing plot > plot1 here, you could have changed the outputId above
    # use aes_string below, instead of aes, because input$y is text
    ggplot(africadata, aes_string(x="area", y=input$yval)) + # Error 3: input$y here didn't match inputID from above; alternatively, change inputId to "y" above instead
      geom_point() + 
      geom_smooth(color="red", method="lm") +
      xlab("Area (sq km)") + 
      theme_minimal()
  })
  
  # code for exercise 2B goes here
}

shinyApp(ui = ui, server = server)  # Error 4: you need to specify ui and server values here

