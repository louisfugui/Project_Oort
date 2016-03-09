
# This is the server logic for a Shiny web application.
# TfL API visualisation
# This function is used to get the positions of the trains from TfL API
# created by FU GUI, Imperial College London - Amey 
# 01/03/2016

library(dplyr)
library(jsonlite)

getTrainPos <- function (linename){
  
  # getting the train positions raw data
  var1 <- linename
  var2 <- "Arrivals"
  url=paste("https://api.tfl.gov.uk/line/",var1,"/", var2, sep="")
  rd <- fromJSON(url) # a data frame with train information
  
  
}