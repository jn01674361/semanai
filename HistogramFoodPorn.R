HistogramFoodPorn <- function(iN, place,xlabel){
  source("/Users/joarnykvist/Documents/R/TopTen.R")
  library(ggplot2)
  library(plyr)
  
  searchword<-"foodporn"  
  sLanguage<-"english"
  
  Xstopwords=c("night","todays","food","foodie","dinner","follow","dinner","instafood","delicious","yummy","eat","amazing","today","london","breakfast","lunch","yum","blogger","just","amp","rfoodporn","via","foodies","la","losangeles","melbourne","freefoodies","foodfasm","foodpic","foodpics","instagram","foodgasm")
  
  Resultado1<-TopTwen(searchword,iN,sLanguage, place, Xstopwords)
  df1 <- data.frame(x = Resultado1[1], y = Resultado1[2])
  
  df1<-arrange(df1,freq) 
  
  df1$word <- factor(df1$word, levels = df1$word)
  
  
  Plot1<-ggplot(df1,aes(x=word,y=freq))+geom_bar(stat="identity") +coord_flip() + labs(title=paste("Words apperaing in tweets with #foodporn hashtag in the ",xlabel   ," area",sep=""), x ="Word" ,y=paste("Count per ", as.character(iN), " tweets",sep=""))
  
  return(Plot1)
  
}


  