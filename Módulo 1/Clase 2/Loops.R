
rm(list=ls())#clear workspace. Recomiendo siempre este comando al inicio de cualquier script. Borra todos los objetos guardados en la consola


###Loops y repeticiones


##Cómo funcionan. Iterar en una función en un intervalo específico

for (i in 1:20) {
  print(i)
}

##Iterar en textos

nombres<-c("Carmen", "Leslie", "Joaquin", "Fermin","Max","Victor","Jan",
           "Cecilia","Katherine","Ninoshka","Karen","Sebastían","Valentina")

for (nombre in nombres) {
  mensaje <- paste("Bienvenide", nombre, "al curso de DataManaging.Tome asiento")
  print(mensaje)
}


# Definimos la función square
square <- function(x) {
  return(x^2)
}

# Creamos un vector con algunos números
numeros <- c(1, 2, 3, 4, 5)

# Aplicamos la función square a cada número en el vector usando un loop for
for (i in 1:length(numeros)) {
  resultado <- square(numeros[i])
  print(paste("El cuadrado de", numeros[i], "es", resultado))
}



###EJEMPLO EN EL MUNDO REAL###


###Extracción de datos desde múltiples fuentes que comparten alguna característica###
require(raster)
require(rgdal)

### Definir la región de recorte para Chile
##recorte <- extent(c(-80, -45, -60, -17))
##
### Obtener la lista de archivos raster en la carpeta
##archivos_raster <- list.files(path = "~/Dropbox/CLASES/Curso Data Managing/Clase 3 Introduccion a R y Python/data/rasters", pattern = "\\.asc$", full.names = TRUE)
##
### Iterar sobre cada archivo raster
##for (archivo in archivos_raster) {
##  # Cargar el archivo raster
##  raster <- raster(archivo)
##  
##  # Recortar el raster a la región de Chile
##  crop <- crop(raster, recorte)
##  
##  # Escribir el raster recortado en un nuevo archivo
##  writeRaster(crop, paste0(archivo, "_dataMan.asc"), format = "ascii")
##}
##

##Un loop para un caso práctico

require(raster)
require(rgdal)

###LEER EL ARCHIVO DE COORDENADAS

sites<-read.csv("sites.csv", sep=";")

colnames(sites)=c("lon","lat") #podemos cambiar el nombre a las columnas

sst_mean<-raster(readGDAL("rasters/sstmean_dataMan.asc"))   #SST RASTER

plot(sst_mean)

##Extraer datos de un punto

extract<-extract(sst_mean,sites) ##Extraer valores de un raster desde coordenadas

###podemos usar para armar un data.frame
sstSites=cbind(sites,extract)
colnames(sstSites)=c("lon","lat","SSTMean") #set nombre columnas

sstSites

##Qué pasa si queremos repetir esto para multiples archivos?? Let's the hacking begins.
###Extract points using several rasters. Here comes the magic

# Obtener la lista de archivos en la carpeta "rasters"
ambiente <- list.files("rasters/", full.names = TRUE)

# Imprimir la lista de archivos

print(ambiente)

##Loops para extraer dato en coordenadas especificas de todos los rasters. 
##Debe estar seteado el setwd al directorio de los rasters
# Cargar el paquete raster

# Ejecutar el código utilizando raster() en lugar de read.asc()

##vamos armando paso a paso

for (i in 1:length(ambiente)){
  print(i)
}

for (i in 1:length(ambiente)){
  print(i)
  of=raster(readGDAL(ambiente[i]))
} 

##Crear un objeto vacío que se vaya "llenando" en cada iteración.
##Loop para leer todos los archivos con extensión .asc
env=NULL
for (i in 1:length(ambiente)){
  print(i)
  of=raster(readGDAL(ambiente[i]))
  env=cbind(env,extract(of,sites))
} 

##Loop para poder extraer desde cada archivo el dato asociado a cada coordenada de mi 
##archivo "sites"
env=NULL
for (i in 1:length(ambiente)){
  print(i)
  of=raster(readGDAL(ambiente[i]))
  env=cbind(env,extract(of,sites))
  colnames(env)[i]=c(ambiente[i])
} 
  
print(env)
envvar<-cbind(sites,env)
envvar


##un poco de limpieza al nombre de las columans,y violá

# Obtener los nombres de las columnas del data frame
names <- names(envvar)

# Eliminar el texto "rasters//" y "_dataMan.asc" de los nombres de las columnas

columnas <- gsub("rasters//", "", names)
columnas <- gsub("_dataMan.asc", "", columnas)

# Asignar los nuevos nombres de las columnas al data frame
names(envvar) <- columnas

# Mostrar los nombres de las columnas del data frame modificado
names(envvar)

envvar
