#1. cargar librerias
library(here)
library(readr)

#2. definir la ruta
archivo <- "cantidad_de_residuos_en_la_estacion_de_transferencia_2023.csv"
ruta_csv <- here(archivo)

#verificamos que el archivo exista
if (!file.exists(ruta_csv)) {
  stop(paste("No se encontró el archivo en:", ruta_csv))
}

#3. cargar el archivo
df <- read_csv(ruta_csv)

cat("--- Archivo cargado exitosamente desde:", basename(ruta_csv), "---\n")
print(spec(df))  # Muestra el tipo de dato asignado a cada columna
head(df)

#muestra la estructura del dataframe
str(df)

#identificador
unique(df$matricula_letra)
length(unique(df$matricula_letra))









