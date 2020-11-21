library(shiny)

shinyUI(fluidPage(
    
    
    titlePanel("Miles Per Gallon (MPG) Prediction Model"),
    
    
    sidebarLayout(
        sidebarPanel(
            helpText("Please input the specifications of your car based on the minimum and maximum value of the model"),
            h3(helpText("Select:")),
            numericInput("hp", label = h4("Horsepower (50-350)"),
                         min = 50, max = 350, step = 5, value = 52),
            selectInput("cyl", label = h4("Cylinders"), 
                        choices = list("Not Determined" = "*", "Four Wheels" = "4", "Six Wheels" = "6",
                                       "Eight Wheels" = "8")),
            numericInput("wt", label = h4("Weight in 1000 lbs (1-6)"), 
                         min = 1, max = 6, step = 0.1, value = 3),
            selectInput("am", label = h4("Transmission"), 
                        choices = list("Not Determined" = "*", "Automatic Transmission" = "0", "Manual Transmission" = "1" ))
        ),
        
        
        mainPanel(
            plotOutput("distPlot"),
            h4("Your car's MPG is:"),
            h3(textOutput("result"))
        )
    )
))
