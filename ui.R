library(shiny)

# Define UI for application that draws a histogram
fluidPage(
  
  # Application title
  titlePanel("censusVis"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      helpText("Create demographic maps with info from
               the 2010 US Census."),
      
      selectInput("var",
                  label = "Choose a variable to display",
                  choices = c("Percent White", "Percent Black",
                              "Percent Hispanic", "Percent Asian"),
                  selected = "Percent White"),
      
      sliderInput("range",
                  "Range of interests",
                  min = 0,
                  max = 100,
                  value = c(0, 100))
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("map")
    )
  )
)

