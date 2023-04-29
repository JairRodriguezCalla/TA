data <- read.csv("C:/Users/jair_/Desktop/Jair/UPC/CICLO 5/Data Science/missing-data.csv", na.string = "")
data$Income[data$Income == 0] <- NA
data$Income.mean <- ifelse(is.na(data$Income), mean(data$Income, na.rm =
                                                      TRUE), data$Income)
