print("Hola, estudiantes del curso Manejo de Datos")


# Asignación de valor a una variable
x <- 3

# Acceso a elementos de un vector
vector <- c(1, 2, 3, 4)
vector[1]

# Definición de una función
suma <- function(a, b) {
  resultado <- a + b
  return(resultado)
}


# Asignación de valor a una variable
x <- 3

# Llamada a una función
resultado <- sqrt(x)

# Operaciones aritméticas y lógicas
a <- 5
b <- 3
suma <- a + b
resta <- a - b
multiplicacion <- a * b
division <- a / b
mayor <- a > b


install.packages("nombre_del_paquete")
library(nombre_del_paquete)
require(nombre_del_paquete)

# Carga del paquete "dplyr"
library(dplyr)

# Uso de una función del paquete "dplyr"
nuevo_data_frame <- select(data_frame_existente, columnas)


# Carga del paquete ggplot2
library(ggplot2)

# Creación del conjunto de datos
datos <- data.frame(x = c(1, 2, 3, 4, 5), y = c(2, 4, 6, 8, 10))

# Creación del gráfico utilizando ggplot
ggplot(datos, aes(x = x, y = y)) + geom_point() + geom_line() +
  labs(x = "Eje X", y = "Eje Y") + ggtitle("Mi primer (?) gráfico en ggplot2")



