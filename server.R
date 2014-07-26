library(shiny)
data(mtcars)
fit <- lm(mpg ~ cyl + wt + disp, mtcars)

shinyServer(  
  function(input, output) {
    output$mpg <- reactive({
      as.numeric(predict(fit, data.frame(cyl=input$cyl, 
                                         wt=input$wt/1000, 
                                         disp=input$disp)
                         ))
      })
  }
)