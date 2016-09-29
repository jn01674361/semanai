TopTwen <- function(searchword,iN,sLanguage,place,Xstopwords){
  
  library(twitteR)
  library(tm)
  library(wordcloud)
  library(RColorBrewer)
  library(SnowballC)
  
  source("/Users/joarnykvist/Documents/R/nonutf8.R")
  
  mySearch <- searchTwitter(searchword, n=iN, geocode=place)
  
  
  #***************************************************************************************************
  
  #Tidying up the tweets and generating dataframe sorted by frequency
  
  cleanTweet <- nonutf8(mySearch)
  
  # create a corpus
  corpus <- Corpus(VectorSource(cleanTweet),
                   readerControl = list(language = sLanguage))
  
  # remove URLs
  corpus <- tm_map(corpus,content_transformer(function(x) gsub("http.*",".",x,ignore.case=TRUE)))
  
  
  # create document term matrix applying some transformations
  tdm <- TermDocumentMatrix(corpus,
                            control = list(language = sLanguage, removePunctuation = TRUE,
                                           stopwords = c(  searchword,Xstopwords, c(stopwords(sLanguage)) ),
                                           removeNumbers = TRUE, tolower = TRUE))
  # define tdm as matrix
  m = as.matrix(tdm)
  # get word counts in decreasing order
  word_freqs = sort(rowSums(m), decreasing=TRUE)
  # create a data frame with words and their frequencies
  dm = data.frame(word=names(word_freqs), freq=word_freqs)
  
  #***************************************************************************************************
  
  
  top20 <- dm[1:20,1:2]
  return(top20)
  
  
}