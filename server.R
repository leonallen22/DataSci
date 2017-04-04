library(shiny)
library(maps)
library(mapproj)
source("helpers.R")

function(input, output) {
  counties = readRDS("data/counties.rds")

  output$map <- renderPlot({
    cols = getCountyDemo(counties, input$var)
    vals = counties[[cols]]
    filtVals = getFilteredVals(vals, input$range[2], input$range[1])
    percent_map(filtVals, "darkgreen", "Legend")
  })
}