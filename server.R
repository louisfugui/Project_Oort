
# This is the server logic for a Shiny web application.
# TfL API visualisation
# created by FU GUI, Imperial College London - Amey 
# 17/02/2016


library(shiny)
library(leaflet)
library(dplyr)
library(tidyr)
library(sp)
library(rgeos)
library(rjson)
library(XML)


source("getTubelines.R")

shinyServer(function(input, output) {
  
  newmap <- reactive(getTubelines(input$showline))

  output$map <- renderLeaflet(newmap())
    
} )

  
  