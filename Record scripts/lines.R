url<-"http://wiki.openstreetmap.org/wiki/List_of_London_Underground_stations"
tubecoor <- readHTMLTable(url, header = T, colClasses = c("character", "numeric","numeric") ,
                          as.data.frame = T ,which = 1, stringsAsFactors=F)
tubecoor[43,2]=51.49787
tubecoor[43,3]=-0.04967

tubecoor <- tubecoor[-5]
tubecoor <- tubecoor[-5]
tubecoor <- tubecoor[-6]

colnames(tubecoor) <- c("name", "lat", "long", "platform/entrance", "line")

sel <- grepl("Overground", tubecoor$line)
overground <- tubecoor[which(sel==1),]

sel <- grepl("Northern", tubecoor$line)
northern <- tubecoor[which(sel==1),]

sel <- grepl("Bakerloo", tubecoor$line)
bakerloo <- tubecoor[which(sel==1),]

sel <- grepl("Central", tubecoor$line)
central <- tubecoor[which(sel==1),]

sel <- grepl("Circle", tubecoor$line)
circle <- tubecoor[which(sel==1),]

sel <- grepl("District", tubecoor$line)
district <- tubecoor[which(sel==1),]

sel <- grepl("Hammersmith & City", tubecoor$line)
hammcity <- tubecoor[which(sel==1),]

sel <- grepl("Jubilee", tubecoor$line)
jubliee <- tubecoor[which(sel==1),]

sel <- grepl("Metropolitan", tubecoor$line)
metro <- tubecoor[which(sel==1),]

sel <- grepl("Piccadilly", tubecoor$line)
picc <- tubecoor[which(sel==1),]

sel <- grepl("Victoria", tubecoor$line)
victoria <- tubecoor[which(sel==1),]

sel <- grepl("Waterloo & City", tubecoor$line)
waterloo <- tubecoor[which(sel==1),]

url<-"http://wiki.openstreetmap.org/wiki/List_of_London_Underground_stations"
dlrcoor <- readHTMLTable(url, header = T, colClasses = c("character", "numeric","numeric") ,
                          as.data.frame = T ,which = 2, stringsAsFactors=F)
dlrcoor[2,2] <- 51.5134047
dlrcoor[2,3] <- -0.08905843
dlrcoor <- dlrcoor[,-c(5,6)]
colnames(dlrcoor) <- c("name", "lat", "long", "platform/entrance")