# helper function for TfL visualistion app
# prepare the "map" HTML file for plotting in leaflet
# Created by FU GUI, Imperial College London - Amey
# 20/02/2016

library(dplyr)
library(magrittr)
library(leaflet)
library(shiny)

source("getTrain.R")
load("./Data/tubedata.RData")

getTubelines <- function (showline){
  


  initmap <- leaflet() %>% addTiles()
  
  if ("bakerloo" %in% showline){
    trainPos <- getTrain("bakerloo")
    initmap <- initmap %>% addCircles( lng = bakerloo1$long, lat = bakerloo1$lat, radius = 200, popup =bakerloo1$name) %>% 
                          addPolylines(lng = bakerloo1$long, lat = bakerloo1$lat,
                                        color = "saddlebrown", weight=5, opacity=0.8)%>% 
                          addMarkers( lng = trainPos$long, lat = trainPos$lat, 
                                        clusterOptions = markerClusterOptions())
  }
  
  if ("central" %in% showline){
    trainPos <- getTrain("central")
    for (n in 1:length(centrallist)){
      initmap <- initmap %>%  addCircles( lng = centrallist[[n]]$long, lat = centrallist[[n]]$lat, radius = 200, 
                                          popup = centrallist[[n]]$name) %>%
        addPolylines(lng = centrallist[[n]]$long, lat = centrallist[[n]]$lat,
                    color= "darkred", weight=5, opacity=0.8) 
    }
    initmap <- initmap %>% addMarkers( lng = trainPos$long, lat = trainPos$lat, 
                                       clusterOptions = markerClusterOptions())
  }
  
  if ("circle" %in% showline){
    trainPos <- getTrain("circle")
    initmap <- initmap %>% addCircles( lng = circle1$long, lat = circle1$lat, radius = 200, popup = circle1$name) %>%
      addPolylines(lng = circle1$long, lat = circle1$lat,
                   color = "gold", weight=5, opacity=0.8) %>%
      addMarkers( lng = trainPos$long, lat = trainPos$lat, 
                  clusterOptions = markerClusterOptions())
  }
  
  if ("district" %in% showline){
    trainPos <- getTrain("district")
    for (n in 1:length(districtlist)){
      initmap <- initmap %>%  addCircles( lng = districtlist[[n]]$long, lat = districtlist[[n]]$lat, radius = 200, 
                                          popup = districtlist[[n]]$name) %>%
        addPolylines(lng = districtlist[[n]]$long, lat = districtlist[[n]]$lat,
                     color = "forestgreen", weight=5, opacity=0.8) 
    }
    initmap <- initmap %>% addMarkers( lng = trainPos$long, lat = trainPos$lat, 
                                       clusterOptions = markerClusterOptions())
  }
  
  if ("hammcity" %in% showline){
    trainPos <- getTrain("hammersmith-city")
    initmap <- initmap %>% addCircles( lng = hammcity1$long, lat = hammcity1$lat, radius = 200, 
                                       popup = hammcity1$name) %>%
      addPolylines(lng = hammcity1$long, lat = hammcity1$lat,
                   color = "darksalmon", weight=5, opacity=0.8) %>%
      addMarkers( lng = trainPos$long, lat = trainPos$lat, 
                  clusterOptions = markerClusterOptions())
  }
  
  if ("jubilee" %in% showline){
    trainPos <- getTrain("jubilee")
    initmap <- initmap %>% addCircles( lng = jubliee1$long, lat = jubliee1$lat, radius = 200,
                                       popup = jubliee1$name) %>%
      addPolylines(lng = jubliee1$long, lat = jubliee1$lat,
                   color = "grey", weight=5, opacity=0.8) %>%
      addMarkers( lng = trainPos$long, lat = trainPos$lat, 
                  clusterOptions = markerClusterOptions())
  }
  
  if ("metro" %in% showline){
    trainPos <- getTrain("metropolitan")
    for (n in 1:length(metrolist)){
      initmap <- initmap %>%  addCircles( lng = metrolist[[n]]$long, lat = metrolist[[n]]$lat, radius = 200, 
                                          popup = metrolist[[n]]$name) %>%
        addPolylines(lng = metrolist[[n]]$long, lat = metrolist[[n]]$lat,
                     color = "darkmagenta", weight=5, opacity=0.8) 
    }
    initmap <- initmap %>% addMarkers( lng = trainPos$long, lat = trainPos$lat, 
                                       clusterOptions = markerClusterOptions())
  }
  
  if ("northern" %in% showline){
    trainPos <- getTrain("northern")
    for (n in 1:length(northernlist)){
      initmap <- initmap %>%  addCircles( lng = northernlist[[n]]$long, lat = northernlist[[n]]$lat, radius = 200, 
                                          popup = northernlist[[n]]$name) %>%
        addPolylines(lng = northernlist[[n]]$long, lat = northernlist[[n]]$lat,
                     color = "black", weight=5, opacity=0.8) 
    }
    initmap <- initmap %>% addMarkers( lng = trainPos$long, lat = trainPos$lat, 
                                       clusterOptions = markerClusterOptions())
  }
  
  if ("picc" %in% showline){
    trainPos <- getTrain("piccadilly")
    for (n in 1:length(picclist)){
      initmap <- initmap %>%  addCircles( lng = picclist[[n]]$long, lat = picclist[[n]]$lat, radius = 200,
                                          popup = picclist[[n]]$name) %>%
        addPolylines(lng = picclist[[n]]$long, lat = picclist[[n]]$lat,
                     color = "darkblue", weight=5, opacity=0.8) 
    }
    initmap <- initmap %>% addMarkers( lng = trainPos$long, lat = trainPos$lat, 
                                       clusterOptions = markerClusterOptions())
  }
  
  if ("victoria" %in% showline){
    trainPos <- getTrain("victoria")
    initmap <- initmap %>% addCircles( lng = victoria1$long, lat = victoria1$lat, radius = 200,
                                       popup = victoria1$name) %>%
      addPolylines(lng = victoria1$long, lat = victoria1$lat,
                   color = "deepskyblue", weight=5, opacity=0.8) %>%
      addMarkers( lng = trainPos$long, lat = trainPos$lat, 
                  clusterOptions = markerClusterOptions())
  }
  
  if ("waterloo" %in% showline){
    trainPos <- getTrain("waterloo-city")
    initmap <- initmap %>% addCircles( lng = waterloo1$long, lat = waterloo1$lat, radius = 200,
                                       popup = waterloo1$name) %>%
      addPolylines(lng = waterloo1$long, lat = waterloo1$lat,
                   color = "cyan", weight=5, opacity=0.8) %>%
      addMarkers( lng = trainPos$long, lat = trainPos$lat, 
                  clusterOptions = markerClusterOptions())
  }
  
#   addCircles( lng = trainPos$long, lat = trainPos$lat, radius = 100,
#               color = "darkgreen", weight = 1, opacity = 1, fill = TRUE, 
#               fillColor = "darkgreen", fillOpacity = 1)
  
  return(initmap)
  
}