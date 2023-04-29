casas <- read.csv("C:/Users/jair_/Desktop/Jair/UPC/CICLO 5/Data Science/TA/LAB 7/BostonHousing.csv")
View(casas)
casas.z <- scale(casas)
View(casas.z)
casas.mean <- scale(casas, center = TRUE, scale = FALSE)
View(casas.mean)
casas.sd <- scale(casas, center = FALSE, scale = TRUE)
View(casas.sd)

normalizar.cols <- function(df, cols) {
  nombres <- names(df)
  for (col in cols) {
    nombre <- paste(nombres[col], "z", sep = ".")
    df[nombre] <- scale(df[, col])
  }
  cat(paste("Hemos normalizado ", length(cols), " variable(s)"))
  return(df)
}

casas <- normalizar.cols(casas, c(1,3,5:8))


View(casas)


