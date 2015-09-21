library(shiny)

shinyUI(fluidPage(
  titlePanel("MPG Predictors"),
  
  sidebarLayout(
    sidebarPanel(
      helpText(paste("Please select the number of cylinders, car weight and displacement.",
                     "Click on 'Calculate MPG' To get your predicted mpg")),
      
      selectInput("cyc", "Number of Cylinders:",
                  c(4,5,6,7,8)),
      br(),
      sliderInput("wt", "Car Weight (lb/1000):", 
                  min = 1, max = 6, value = 2, step= 0.001),
      br(),
      sliderInput("disp", "Displacement (cu.in.):", 
                  min = 65, max = 500, value = 200, step= 0.1),
      br(),
      submitButton("Calculate MPG?")
    ),
    
    mainPanel(
      htmlOutput("text")
    )
  )
))