library(XML)
wpob.url <- "C:/Users/jair_/Desktop/Jair/UPC/CICLO 5/Data Science/TA/WorldPopulation-wiki.html"
tablas <- readHTMLTable(wpob.url)
most_wpob <- tablas[[5]]
head(most_wpob,3)
tabla_unica <- readHTMLTable(wpob.url, which = 5)
