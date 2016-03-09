
# arrange station sequence for Bakerloo line
bakerseq <- read.csv("bakerloo.csv", header = F)
bakerloo$seq <- 0
for (i in 1:nrow(bakerloo)){
  sel <- pmatch(bakerloo$name[i], bakerseq[,1])
  bakerloo$seq[i] <- sel
}
bakerloo <- bakerloo %>% arrange(seq)

# arrange station sequence for central line
centralseq <- read.csv("centralseq.csv", header = F)
central$seq <- 0
for (i in 1:nrow(central)){
  sel <- pmatch(central$name[i], centralseq[,1])
  central$seq[i] <- sel
}
central <- central %>% arrange(seq)
central[53,6] <- 24
central <- central[-4,]
central <- central %>% arrange(seq)
central <- central[-22,]
central <- central %>% arrange(seq)
central <- central[-30,]

circle[26,] <- central[50,1:5]
central <- central[-50,]
central <- central %>% arrange(seq)

# arrange station sequence for circle line
circleseq <- read.csv("circleseq.csv")
circle$seq <- 0
for (i in 1:nrow(circle)){
  sel <- pmatch(circle$name[i], circleseq[,1])
  circle$seq[i] <- sel
}
circle <- circle %>% arrange(seq)

# arrrange stations for district line

districtseq <- read.csv("districtseq.csv")
district$seq <- 0
for (i in 1:nrow(district)){
  sel <- pmatch(district$name[i], districtseq[,1])
  district$seq[i] <- sel
}
district <- district %>% arrange(seq)

# arrange stations for hammcity line

hammcityseq <- read.csv("hammcityseq.csv")
hammcity$seq <- 0
for (i in 1:nrow(hammcity)){
  sel <- pmatch(hammcity$name[i], hammcityseq[,1])
  hammcity$seq[i] <- sel
}
hammcity <- hammcity %>% arrange(seq)

# arrange stations for the Jubilee line

jublieeseq <- read.csv("jubileeseq.csv")
jubliee$seq <- 0
for (i in 1:nrow(jubliee)){
  sel <- pmatch(jubliee$name[i], jublieeseq[,1])
  jubliee$seq[i] <- sel
}
jubliee <- jubliee %>% arrange(seq)

# arrange stations for the metropolitan line

metroseq <- read.csv("metroseq.csv")
metro$seq <- 0
for (i in 1:nrow(metro)){
  sel <- pmatch(metro$name[i], metroseq[,1])
  metro$seq[i] <- sel
}
metro <- metro %>% arrange(seq)

# arrange stations for the Northern Line

northernseq <- read.csv("northernseq.csv")
northern$seq <- 0
for (i in 1:nrow(northern)){
  sel <- pmatch(northern$name[i], northernseq[,1])
  northern$seq[i] <- sel
}
northern <- northern %>% arrange(seq)

# arranges statons on the piccadily line

piccseq <- read.csv("piccseq.csv")
picc$seq <- 0
for (i in 1:nrow(picc)){
  sel <- pmatch(picc$name[i], piccseq[,1])
  picc$seq[i] <- sel
}
picc <- picc %>% arrange(seq)

# arrange stations on the victoria line

victoriaseq <- read.csv("victoriaseq.csv")
victoria$seq <- 0
for (i in 1:nrow(victoria)){
  sel <- pmatch(victoria$name[i], victoriaseq[,1])
  victoria$seq[i] <- sel
}
victoria <- victoria %>% arrange(seq)

# arrange stations on the waterloo line

# there are only two stations, no need to arrange... 



