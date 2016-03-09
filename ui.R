
# This is the user-interface definition of a Shiny web application.
# Project_Oort
# TfL API visualisation
# created by FU GUI, Imperial College London - Amey 
# 17/02/2016


library(shiny)
library(leaflet)
library(dplyr)
library(tidyr)
library(sp)
library(rgeos)
library(XML)

shinyUI(fluidPage(


  sidebarLayout(
    sidebarPanel(
      checkboxGroupInput("showline", 
                         label = h3("Tube lines to show"), 
                         choices = c("Bakerloo" = "bakerloo", 
                                        "Central" = "central", "Circle" = "circle", "District" = "district",
                                     "Hammersmith & City" = "hammcity", "Jubilee" = "jubilee", "Metropolitan" = "metro",
                                     "Northern" = "northern", "Piccadilly" = "picc", "Victoria" = "victoria",
                                     "Waterloo & City" = "waterloo"))
                         ),

    mainPanel(
      leafletOutput("map", height = 800)

    )
  )
))
