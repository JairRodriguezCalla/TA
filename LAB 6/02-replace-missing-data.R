rand.valor <- function(x){
  + faltantes <- is.na(x)
  + tot.faltantes <- sum(faltantes)
  + x.obs <- x[!faltantes]
  10
  + valorado <- x
  + valorado[faltantes] <- sample(x.obs, tot.faltantes, replace = TRUE)
  + return (valorado)
  }



random.df <- function(df, cols){
  + nombres <- names(df)
  + for (col in cols) {
  +  nombre <- paste(nombres[col], "valorado", sep = ".")
  +  df[nombre] <- rand.valor(df[,col])
  }
  + df
}

data.limpio <- random.df(data, c(1,2))
View(data.limpio)
