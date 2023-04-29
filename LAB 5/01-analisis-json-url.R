install.packages("jsonlite")
library(jsonlite)
float.url<-"https://www.floatrates.com/daily/usd.json"
daily.usd <- fromJSON(ine.url)
