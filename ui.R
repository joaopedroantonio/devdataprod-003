library(shiny)

shinyUI(pageWithSidebar(
  
  headerPanel("Miles Per Gallon Predictor"),
  
  sidebarPanel(
    h5("Vehicle Characteristics"),
    numericInput('cyl', 'Number of Cylinders', value=6, min=3, max=16),
    numericInput('wt', 'Weight (lb)', value=3500, min=1000, max=10000),
    numericInput('disp', 'Displacement (cubic inches)', value=200, min=50, max=500)
    ),
  
  mainPanel(
    strong("Are you about to buy a new car?"),
    br(),
    br(),
    strong("Want to know what will be the expected fuel consumption?"),
    br(),
    br(),
    p("This Miles Per Gallon (MPG) Predictor will give you the number of MPG you
      can expect from a vehicle, calculated with the characteristics filled in 
      the form on the left."),
    p("To use this application you just have to fill in the form the Number of 
      Cylinders of the vehicle, its Weight (in pounds) and its Displacement (in 
      cubic inches)."),
    br(),
    strong("A vehicle with the characteristics inserted is expected to have the 
      following fuel consumption in MPG:"),
    verbatimTextOutput("mpg")
    )
  )
)