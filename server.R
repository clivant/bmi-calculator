shinyServer(function(input, output) {
  
  # Use a reactive expression to calculate bmi
  bmi <- reactive({
    
    height <- input$height
    weight <- input$weight
    
    result <- '';
    
    if (!is.na(height) && !is.na(weight)) {
      if (height > 0 && weight > 0) {
        result <- paste0("<div class='results'><p> Your BMI is ", round((weight / ( (height / 100) ^ 2)), digits=2), "</p></div>")
      }
      else {
        result <- '<div class="error"><p>Please enter a value greater than 0 for both your height and your weight.</p></div>'
      }
    }
    
    result
  })
  
  output$bmiResults <- renderText({bmi()})
  
})
