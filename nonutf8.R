nonutf8<-function(mySearch){
  
  
  rawTweets <- twListToDF(mySearch)$text
  convTweets <- iconv(rawTweets, to = "utf-8")
  tweets <- (convTweets[!is.na(convTweets)])
  tweets <- iconv(tweets,to="utf-8-mac")
  
  return(tweets)
}