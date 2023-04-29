setwd("C:/Users/jair_/Desktop/Jair/UPC/CICLO 5/Data Science/TA/LAB 7")
install.packages("scales")
library(scales)
estudiantes <- read.csv("C:/Users/jair_/Desktop/Jair/UPC/CICLO 5/Data Science/TA/LAB 7/data-conversion.csv")
View(estudiantes)
estudiantes$Income.rescaled <- rescale(estudiantes$Income)
View(estudiantes)
(estudiantes$Income - min(estudiantes$Income)) / (max(estudiantes$Income
)- min(estudiantes$Income))
rescale(estudiantes$Income, to = c(0,100))
rescalar.cols <- function(df, cols){
  nombres <- names(df)
  for (col in cols){
    nombre <- paste(nombres[col], 'rescaled', sep = '.')
    df[nombre] <- scales::rescale(df[,col])
  }
  cat(paste("Hemos reescalado ", length(cols), " variable(s)"))
  return(df)
}

estudiantes <- rescalar.cols(estudiantes, c(1,4))

View(estudiantes)
