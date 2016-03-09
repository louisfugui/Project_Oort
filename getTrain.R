# # Getting the train position data from TfL API
# Project_Oort
# TfL API visualisation
# created by FU GUI, Imperial College London - Amey 
# 17/02/2016

library(rjson)
library(dplyr)

getTrain <- function (linename){

# getting the train positions
var1 <- linename
var2 <- "arrivals"
url=paste("https://api.tfl.gov.uk/line/",var1,"/", var2, sep="")
Posdata <- readLines(url, warn = "F")

rd <- fromJSON(Posdata)

# getting the nearest station to each train
l<-length(rd)
i<-nrow(tubecoor)
num<-c()
train<-c()
for (n in 1:l){
  for (m in 1:i){
    if (length(grep(tubecoor$name[m], rd[[n]]$currentLocation, fixed = TRUE)==1)){
      num<-c(num,m)
      train<-c(train,n)
      break
    }
  }
}
trainPos<-tubecoor[num,]
# Trainpopup <- trainPos %>% group_by(name) %>% summarise(No.train=n())
# trainPos <- trainPos %>% group_by(name) %>% unique() %>% arrange(name)
# trainPos$No.train <- "No. of trains:"
return(trainPos)

}