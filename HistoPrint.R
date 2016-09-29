source("HistogramFoodPorn.R")

iN<-1000

#***************************************************************************************************
place1 <- "51.507353,-0.128116,10mi"
xlabel1<-"London"

p<-HistogramFoodPorn(iN,place1,xlabel1)


#***************************************************************************************************

place2 <- "-37.814395,144.963128,10mi"
xlabel2<-"Melbourne"

q<-HistogramFoodPorn(iN,place2,xlabel2)


#***************************************************************************************************

place3<-"34.042233,-118.245263,10mi"

xlabel3<-"Los Angeles"

r<-HistogramFoodPorn(iN,place3,xlabel3)

#print(p)
#print(q)
print(r)

