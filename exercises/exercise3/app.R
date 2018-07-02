# EXERCISE 3

library(shiny)

applicationnumber <- sample(1:2000, 1)

ui <- fluidPage(
  
  titlePanel("What Changes?"),
  
  fluidRow(
    column(width=4, textInput(inputId="usertext", label="Type something")),
    column(width=8, tags$h4(htmlOutput(outputId="usertextoutput")))
  ),
  
  fluidRow(
    column(width=4, 
      numericInput(inputId = "n",
                 label = "Enter a number:",
                 value = 5,
                 min = 1, max = 30, step=1)
    ),
    column(width=8,
           tags$h1(textOutput(outputId="letters")))
  ),
  
  verticalLayout(
      tags$h3("Application"),
      textOutput(outputId="appnum"),

      tags$h3("Session"),
      textOutput(outputId="sessnum")
  )
)

server <- function(input, output) {
  sessionnumber <- sample(3000:30000, 1)
  textcolor <- sample(c("red","orange","green","blue","purple", "pink", "brown", "black"), 1)
  
  output$appnum <- renderText({
    paste("Application Random Number is", applicationnumber)
  })
  
  output$sessnum <- renderText({
    paste("Session Random Number is", sessionnumber)
  })
  
  output$usertextoutput <- renderUI({
    HTML(paste('<font color="',textcolor,'">',input$usertext,'</font>'))
  })
  
  output$letters <- renderText({
    paste(rep(sample(LETTERS, 1), input$n), collapse=' ')
  })
}

shinyApp(ui=ui, server=server)

