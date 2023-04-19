###EJEMPLO 1

# Cargar librerías
library(tidyverse)

# Cargar datos
data(iris)

#visualizar el data set
print(iris)

# Resumen de los datos
summary(iris)


# Calcular promedio y desviación estándar de la longitud del pétalo por especie

iris_summary <- iris %>%
  group_by(Species) %>%
  summarise(
    petal_length_mean = mean(Petal.Length),
    petal_length_sd = sd(Petal.Length)
  )

print(iris_summary)

# Gráfico de dispersión con color por especie y etiquetas en los ejes
library(ggplot2)
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point() +
  labs(x = "Longitud del Sépalo (cm)", y = "Longitud del Pétalo (cm)") +
  theme_bw()

getwd()


# Ejemplo 2. Filtrado simple de datos.
# La sintaxis %>% se utiliza en R para encadenar operaciones de datos,
# lo que significa que el resultado de una operación se pasa automáticamente a la siguiente.

iris_filtered <- iris %>%
  filter(Sepal.Length > 6 & Petal.Length > 4)

# Ver datos filtrados
print(iris_filtered)

#################################
###ANALISIS DISCRIMINANTE EN R###
#################################

# Ajuste del modelo de análisis discriminante en todo el conjunto de datos

library(MASS)
modelo <- lda(Species ~ ., data = iris)

modelo
# Predicción de las coordenadas proyectadas en ambos discriminantes lineales
coordenadas <- predict(modelo, iris)$x

# Agregar la variable target a las coordenadas proyectadas
coordenadas <- data.frame(LD1 = coordenadas[, 1], LD2 = coordenadas[, 2], target = iris$Species)

# Gráfico de los resultados del análisis discriminante
library(ggplot2)
ggplot(coordenadas, aes(x = LD1, y = LD2, color = target)) + geom_point() + ggtitle("Análisis discriminante")


###EJEMPLO 2

# Cargar librerías
library(tidyverse)

# Cargar datos
data(mtcars)

head(mtcars)
# Resumen de los datos
summary(mtcars)

##Escribir un archivo de datos en csv
##write.csv(mtcars, "mtcars.csv", row.names = FALSE)

# Calcular promedio y desviación estándar de millas por galón (mpg) por número de cilindros

mtcars_summary <- mtcars %>%
  group_by(cyl) %>%
  summarise(
    mpg_mean = mean(mpg),
    mpg_sd = sd(mpg)
  )

print(mtcars_summary)

# Gráfico de barras de millas por galón (mpg) promedio por número de cilindros
ggplot(mtcars_summary, aes(x = factor(cyl), y = mpg_mean)) +
  geom_col(fill = "steelblue") +
  geom_errorbar(
    aes(ymin = mpg_mean - mpg_sd, ymax = mpg_mean + mpg_sd),
    width = 0.2
  ) +
  labs(x = "Número de cilindros", y = "Millas por galón (mpg) promedio") +
  theme_minimal()


####EJEMPLO 3. Cargar un archivo desde un .csv y desde excel.
#install.packages("gdata")
#install.packages("readxl")

library(gdata)
library(readxl) ##esta libreria, nos permite importar archivos directo desde excel

##Si el archivo excel tiene varias hojas, debemos especificar cual queremos leer. 
## Hay dos formas

##setear el directorio de trabajo

setwd("~/Dropbox/CLASES/DataManaging/Clase3/data")

datos <- read.xls("WWFEndangeredspecies.xls", sheet = "Hoja1")

print(datos)

datos <- read_excel("WWFEndangeredspecies.xls", sheet = 1)

print(datos)


##Podemos aplicar expresiones regulares en R?

# Eliminar la columna Common_Name
# tres formas distintas

#El "-1" en esa línea de código indica que se está excluyendo la primera 
#columna del conjunto de datos. En R, los conjuntos de datos (data frames) 
#se indexan por columnas y filas, y la indexación comienza en 1.

datos <- datos[, -1]

##Forma 2
datos$Common_Name <- NULL

##Forma 3

datos <- subset(datos, select = -Common_Name)

# Crear la expresión regular
#la sintaxis es levemente distinta, pero funciona de igual forma!
patron <- "^(\\w{1})\\w+\\s(\\w+)"

# Modificar la columna Scientific_name utilizando la expresión regular
datos$Scientific_name <- gsub(patron, "\\1_\\2", datos$Scientific_name)

head(datos)



###Un conteo simple de datos
conteos <- table(datos$Conservation_estatus)
print(conteos)

##Ahora grafiquemos 

library(ggplot2)

# Contar los valores repetidos en la columna "Conservation_estatus"
count <- table(datos$Conservation_estatus)

# Graficar los conteos
ggplot(data.frame(count = count, status = names(count)), aes(x = status, y = count, fill = status)) + 
  geom_bar(stat = "identity") +
  xlab("") +
  ylab("Frecuencia") +
  ggtitle("Especies en peligro")

##definamos un color para cada columna. Igual como lo hicimos en python

# Crear un data.frame con los datos del conteo

df_count <- data.frame(status = names(count), count = as.numeric(count))

# Definir la lista de colores
colores <- ifelse(df_count$status == "Endangered", "orange", "red")

# Graficar el histograma con los colores asignados
ggplot(df_count, aes(x = status, y = count, fill = status)) +
  geom_bar(stat = "identity", width = 0.5) +
  scale_fill_manual(values = colores) +
  labs(x = "", y = "Frecuencia", title = "Especies en peligro") +
  theme_minimal()


