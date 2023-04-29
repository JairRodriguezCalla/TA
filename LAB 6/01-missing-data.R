data <- read.csv("C:/Users/jair_/Desktop/Jair/UPC/CICLO 5/Data Science/missing-data.csv", na.string = "")
data.limpia <- na.omit(data)
View(data.limpia)
is.na(data[4,2])
is.na(data[4,1])
is.na(data$Income)
data.income.limpio <- data[!is.na(data$Income),]
complete.cases(data)
data.limpia2 <- data[complete.cases(data),]
data$Income[data$Income == 0]
data$Income[data$Income == 0] <- NA
data$Income[data$Income == 0]
mean(data$Income)
mean(data$Income, na.rm=TRUE)
sd(data$Income)
sd(data$Income, na.rm=TRUE)
sum(data$Income)
sum(data$Income, na.rm=TRUE)
