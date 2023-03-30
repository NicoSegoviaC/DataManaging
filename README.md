# DataManaging

Curso electivo diseñado para proporcionar a los estudiantes una comprensión sólida de las técnicas y herramientas necesarias para el manejo, análisis y visualización de datos con dos de los lenguajes de programación gratuitos más populares en ciencia hoy en día: R y Python. Los módulos están diseñados en algunos casos para automatizar o sistematizar procesos complejos, con el objetivo de optimizar, depurar, y minimizar el tiempo y errores al manejar bases de datos grandes. Los módulos más importantes serán abordados con detalle y se enfatizará además en la aplicación práctica de las distintas técnicas mediante ejemplo con datos o situaciones reales en conjunto con los estudiantes y sus intereses científicos personales. 
Curso orientado a estudiantes de postgrado con conocimientos básicos en estadística y plataformas como R y Python. 

<div style="text-align:center;">
  <img src="https://user-images.githubusercontent.com/10599260/225934125-5dc444d6-92bc-47cc-92db-dad89cf4f0df.png" width="400" height="200">
</div>

## Objetivos terminales: 
El objetivo del curso es proporcionar a los estudiantes de herramientas potentes para el manejo, análisis y visualización de sus datos para su uso rutinario tanto en sus trabajos de tesis, como en su quehacer científico.
Al final del curso, los estudiantes estarán capacitados para aplicar los conocimientos adquiridos en la solución de problemas en diferentes áreas.


## Tutorial de instalación de programas para el curso.

En el siguiente tutorial, encontrarás instrucciones para instalar los programas que usaremos durante el curso. Si tienes algún inconveniente o detectas un error, por favor comunicarte con Nicolás Segovia (nsegoviac@gmail.com). 
Durante el curso, usaremos más módulos y paquetes, por lo que  este tutorial es solo referencial. Todos los módulos y paquetes en Python y R (salvo excepciones, particularmente en R para repositorios externos a CRAN) se instalan de la misma forma. 

### Bbedit
Para usuarios de MAC, por favor, instalar [BBedit](https://www.barebones.com/products/bbedit/) de la empresa Bare Bones Softwares. Es fundamental para la clase de expresiones regulares. La versión gratuita está impecable para el curso. 

### Notepad ++
Para usuarios de Windows, por favor descargar [Notepad ++](https://notepad-plus-plus.org/downloads/v8.5.1/). Es un procesador de texto y usa el mismo lenguaje que BBedit para Mac, por lo que los comando que usemos son, salvo excepciones, aplicables a ambos. 

## Instalación Python 

### Instalación en Windows
1. Descargar e instalar Conda
Dirígete a la página de descarga de [Anaconda](https://www.anaconda.com/products/individual) y descarga la versión adecuada para tu sistema operativo.
Abre el archivo descargado y sigue las instrucciones del instalador. Asegúrate de seleccionar "Add Anaconda to my PATH environment variable" durante la instalación.

2. Instalar los módulos
Abre el `Anaconda Prompt` desde el menú de inicio de Windows.

Escribe los siguientes comandos y presiona enter para instalar los módulos Pandas, Numpy y Matplotlib:

```
conda install pandas
conda install numpy
conda install matplotlib
```

### Instalación de Jupyter-lab
En el `Anaconda Prompt`, escribe el siguiente comando y presiona enter para instalar Jupyter Notebook:

```
conda install jupyter
```

Si no hay mensajes de error, está todo listo para comenzar a usar jupyter-lab. Simplemente en el mismo `Anaconda Prompt` escribe

```
jupyter-lab
```
o 
```
jupyter notebook
```
Y debería abrirse Jupyter en tu navegador predeterminado. 

### Instalación en Mac

1. Descargar e instalar Conda
Dirígete a la página de descarga de [Anaconda](https://www.anaconda.com/products/individual) y descarga la versión adecuada para tu sistema operativo.
Abre el archivo descargado y sigue las instrucciones del instalador.

2. Instalar los módulos
Abre la "Terminal" de tu Mac.
Escribe los siguientes comandos y presiona enter para instalar los módulos Pandas, Numpy y Matplotlib:

```
conda install pandas
conda install numpy
conda install matplotlib
```

### Instalación de Jupyter-lab

En la terminal de tu Mac, ingresa el siguiente comando: 

```
conda install jupyter
```
Si no hay mensajes de error, está todo listo para comenzar a usar jupyter-lab. Simplemente en el mismo `Anaconda Prompt` escribe

```
jupyter-lab
```
o 
```
jupyter notebook
```
Y debería abrirse Jupyter en tu navegador predeterminado. 

## Instalación de R y RStudio

Recordar que RStudio es una interfaz gráfica para R, que permite un manejo lógico del REnvironment, pero este **no puede funcionar si no hay R instalado por lo que es fundamental instalar ambos programas**. 

### Instalación en Windows
1. Descargar e instalar R
Dirígete a la página de descarga de [R](https://cran.r-project.org/bin/windows/base/) y descarga el archivo de instalación para Windows.

Abre el archivo descargado y sigue las instrucciones del instalador.

2. Descargar e instalar RStudio
Dirígete a la página de descarga de [RStudio] (https://www.rstudio.com/products/rstudio/download/#download) y descarga la versión adecuada para tu sistema operativo. En la página de R estudio, también está el link para descargar R.

Abre el archivo descargado y sigue las instrucciones del instalador.

3. Instalar los paquetes básicos. Solo como ejemplo

Abre RStudio y en la consola de R, escribe los siguientes comandos y presiona enter para instalar los paquetes dplyr y ggplot2:

```
install.packages("ggplot")
install.packages("dplyr")
```
Si te aparece una ventana para seleccionar un servidor de descarga, selecciona el servidor más cercano a tu ubicación.

Para comprobar que los paquetes fueron instalados correctamente, escribir los siguientes comandos

```
library(ggplot)
library(dplyr)
```

Si no sale ningún error, está todo correcto.

### Instalación en Mac

1. Descargar e instalar R
Dirígete a la página de descarga de [R](https://cran.r-project.org/bin/macosx/) y descarga el archivo de instalación para tu versión de macOS.

Abre el archivo descargado y sigue las instrucciones del instalador.
2. Descargar e instalar RStudio
Dirígete a la página de descarga de [RStudio](https://www.rstudio.com/products/rstudio/download/#download) y descarga la versión adecuada para tu sistema operativo.

Abre el archivo descargado y sigue las instrucciones del instalador.
3. Instalar los paquetes

Abre RStudio y en la consola de R, escribe los siguientes comandos y presiona enter para instalar los paquetes dplyr y ggplot2:

```
install.packages("ggplot")
install.packages("dplyr")
```
Si te aparece una ventana para seleccionar un servidor de descarga, selecciona el servidor más cercano a tu ubicación.

Para comprobar que los paquetes fueron instalados correctamente, escribir los siguientes comandos

```
library(ggplot)
library(dplyr)
```

Si no sale ningún error, está todo correcto.





