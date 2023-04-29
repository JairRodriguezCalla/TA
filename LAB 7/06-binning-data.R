setwd("C:/Users/jair_/Desktop/Jair/UPC/CICLO 5/Data Science/TA/LAB 7")
estudiantes <- read.csv("C:/Users/jair_/Desktop/Jair/UPC/CICLO 5/Data Science/TA/LAB 7/data-conversion.csv")
niveles <- c(-Inf, 10000, 31000, Inf)
nom.nivel <- c('Bajo', 'Medio', 'Alto')
estudiantes$Income.cat <- cut(estudiantes$Income, breaks = niveles, labels = nom.nivel)
str(estudiantes)
estudiantes$Income.cat2 <- cut(estudiantes$Income,
                               breaks = 4,
                               labels = c("Nivel 1", "Nivel 2", "Nivel 3", "Nivel 4"))
View(estudiantes)

#VariablesFicticias
estudiantes <- read.csv("C:/Users/jair_/Desktop/Jair/UPC/CICLO 5/Data Science/TA/LAB 7/data-conversion.csv")
install.packages("dummies")
library(dummies)
estudiantes.dummy <- dummy.data.frame(estudiantes, sep = ".")
names(estudiantes.dummy)
View(estudiantes.dummy)
dummy(estudiantes$State, sep=".")
dummy.data.frame(estudiantes, names = c("State"), sep =".")
dummy.data.frame(estudiantes, names = c("State", "Gender"), sep =".")

ozone.data <- read.csv("C:/Users/jair_/Desktop/Jair/UPC/CICLO 5/Data Science/TA/LAB 7/ozone.csv", stringsAsFactors = FALSE)

View(ozone.data)
outliers.values <- boxplot(ozone.data$pressure_height)$out
outliers.values
summary(ozone.data$pressure_height)
boxplot(ozone.data$pressure_height,
        main = "Pressure Height",
        boxwex = 0.5)
boxplot(pressure_height ~ Month, data = ozone.data,
        main = "Pressure Height per Month")
boxplot(ozone_reading ~ Month, data = ozone.data,
        main = "Ozone reading per Month")
boxplot(ozone_reading ~ Month, data = ozone.data,
        main = "Ozone reading per Month")$out
fix_outliers <- function(x, removeNA = TRUE){
   #Calculamos los quantiles 1) por arriba del 5% y por debajo del 95%
    9
  quantiles <- quantile(x, c(0.05, 0.95), na.rm = removeNA)
  x[x<quantiles[1]] <- mean(x, na.rm = removeNA)
  x[x>quantiles[2]] <- median(x, na.rm = removeNA)
  x
  }
sin.outliers <- fix_outliers(ozone.data$pressure_height)
par(mfrow = c(1,2))
boxplot(ozone.data$pressure_height, main = "Presión sin Outliers")
boxplot(fix_outliers(ozone.data$pressure_height), main = "Presión sin Outliers
")
replace_outliers <- function(x, removeNA = TRUE){
  qrts <- quantile(x, probs = c(0.25, 0.75), na.rm = removeNA)
  # si el outlier esta por debajo del cuartil 0.5 o por arriba de 0.95
    caps <- quantile(x, probs = c(.05, .95), na.rm = removeNA)
    # Calculamos el rango intercuartilico
      iqr <- qrts[2]-qrts[1]
      # Calculamos el 1.5 veces el rango intercuartiligo (iqr)
       altura <- 1.5*iqr
        #reemplazamos del vector los outliers por debajo de 0.05 y 0.095
          10
        x[x<qrts[1]-altura] <- caps[1]
       x[x>qrts[2]+altura] <- caps[2]
        x
        }
par(mfrow = c(1,2))
boxplot(replace.outliers(ozone.data$pressure_height), main = "Presión sin Outliers")
boxplot(ozone.data$pressure_height, main = "Presión con Outliers")
boxplot(replace_outliers(ozone.data$pressure_height), main = "Presión sin Outl
iers")
clientes <- c("Arturo", "Bill", "Jack")
fechas <- c("2021-05-01", "2021-04-28", "2021-03-30")
pagos <- c(315.1, 205.4,450.2)
fechas <- as.Date(c("2021-05-01", "2021-04-28", "2021-03-30"))
pedidos <- data.frame(clientes, fechas, pagos)
View(pedidos)
save(pedidos, file = "C:/Users/jair_/Desktop/Jair/UPC/CICLO 5/Data Science/TA/LAB 7/pedidos.Rdata")
cliente.frec <- c("Arturo", "Jack")
save(pedidos, cliente.frec, file = "C:/Users/jair_/Desktop/Jair/UPC/CICLO 5/Data Science/TA/LAB 7/pedidos.Rdata")
save.image(file = "C:/Users/jair_/Desktop/Jair/UPC/CICLO 5/Data Science/TA/LAB 7/alldata.Rdata" )
saveRDS(pedidos, file = "C:/Users/jair_/Desktop/Jair/UPC/CICLO 5/Data Science/TA/LAB 7/pedidos.rds")
remove(pedidos)
load("C:/Users/jair_/Desktop/Jair/UPC/CICLO 5/Data Science/TA/LAB 7/pedidos.RData")
attach("C:/Users/jair_/Desktop/Jair/UPC/CICLO 5/Data Science/TA/LAB 7/pedidos.RData")
orders <- readRDS("C:/Users/jair_/Desktop/Jair/UPC/CICLO 5/Data Science/TA/LAB 7/pedidos.rds")
write.csv(pedidos,'C:/Users/jair_/Desktop/Jair/UPC/CICLO 5/Data Science/TA/LAB 7/pedidos.csv', na="NA",row.names=FALSE)
write.csv(pedidos,'C:/Users/jair_/Desktop/Jair/UPC/CICLO 5/Data Science/TA/LAB 7/pedidos2.csv', na="NA")
