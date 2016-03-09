central2 <- central[8:10,]
View(central2)
central<- central[-8:10,]

central<- central[-c(8:10),]
View(central)
central[47,]<- central2[3,]
central <- central %>% arrange(seq)
centralback <- central
central3 <- central[29:39]
central3 <- central[29:39,]
View(central3)
central <- central[-c(30:38),]
central1 <- central
rm(central,centralback)

districtback <- district
district2 <- district[4:7,]
district <- district[-c(4:6),]
district3 <- district[11:18,]
district3[9,] <- district[20,]
district3[10,] <- district[19,]
district3[9,6] <- 21.5
district <- district[-c(11:18, 19),]
district4 <- district[11:16,]
district <- district[-c(12:16),]
district1 <- district
rm(district,districtseq,districtback)

hammcity1 <- hammcity
rm(hammcity,hammcityseq)

jubliee1 <- jubliee
rm(jubliee, jublieeseq)

metroback <- metro
metro2 <- metro[32:33,]
metro <- metro[-33,]
metro3 <- metro[28:30,]
metro3[1,6] <- 29.5
metro3 <- metro3 %>% arrange(seq)
metro <- metro[-c(28,29),]
metro4 <- metro[14:22,]
metro1 <- metro[-c(15:22),]
rm(metro, metroseq, metroback)

northernback <- northern
northern2 <- northern[5:6,]
northern <- northern[-5,]
northern3 <- northern[11:20,]
northern <- northern[-c(11:19),]
northern4 <- northern[13:20,]
northern4[9,] <- northern[29,]
northern1 <- northern[-c(14:20),]
rm(northern, northernseq, northernback)

victoria1 <- victoria
rm(victoria, victoriaseq)

waterloo1 <- waterloo
rm(waterloo)

piccback <- picc
picc2 <- picc[28:39,]
picc1 <- picc[-c(29:39),]
picc3 <- picc2[c(9:11),]
picc2 <- picc2[-4,]
rm(picc,piccseq,piccback)

rm(dlrcoor,tubecoor,overground, statcoor)
