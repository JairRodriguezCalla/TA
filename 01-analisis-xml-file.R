install.packages("XML")
library(XML)
cd.url <-"C:/Users/jair_/Desktop/Jair/UPC/CICLO 5/Data Science/TA/cd_catalog.xml"
cd.doc<-xmlParse(cd.url)
root.node <- xmlRoot(bm.doc)
root.node[1]
cd.data <- xmlSApply(root.node, function(x) xmlSApply(x, xmlValue))
cd.datos <- data.frame(t(bm.data), row.names = NULL)
