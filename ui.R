shinyUI(
  fluidPage(
    # Add on customized css styles
    tags$head(
      tags$link(rel = "stylesheet", type = "text/css", href = "addon.css")
    ),
    titlePanel("Calculate your BMI"),
    sidebarLayout(
      sidebarPanel(
        numericInput("height", label="Your height in centimeters", value = ''),
        numericInput("weight", label="Your weight in kilograms", value = ''),
        submitButton("Calculate")
        ),
      mainPanel(
        p("This application calculates your Body Mass Index, which is your weight in kilograms divided by the square of your height in meters."),
        p("Provide your height (in centimeters) and weight (in kilograms) in the textboxes on the left to calculate your BMI."),
        htmlOutput("bmiResults")
        )
    )
  )
)