### Archivos de transporte marítimo para poder aplicar el loop del script Loops.ipynb

El loop, permite aplicar una serie de funciones de limpieza de datos y expresiones regulares para poder depurar un set de 16 archivos con la misma estructura. 

```
# Cargar módulos necesarios

import pandas as pd
import re
import os
import glob

# Iterar a través de los archivos y aplicar la expresión regular y otras funciones a cada uno

# Definir la expresión regular. Esta expresión toma las dos primera mayúsculas de la columna 1, y los 4 dígitos de la columna 2.
regex = r"^([A-Z]{2}).*;\w+(\d{4})$"

# Iterar a través de los archivos y aplicar la expresión regular y otras funciones a cada uno
for file in csv_files:
    # 1 Leer el archivo en un DataFrame de Pandas
    df = pd.read_csv(file,sep=";")
    
    # 2 Aplicar la expresión regular a las columnas Name y Radio Call Sign
    df["Name"] = df.apply(lambda row: re.sub(regex, r"\1_\2", row["Name"] + ";" + row["Radio Call Sign (RC)"]), axis=1)
    
    # 3 Redondear las columnas Latitude y Longitude a dos decimales
    df["Latitude"] = df["Latitude"].round(2)
    df["Longitude"] = df["Longitude"].round(2)
    
    # 4 Aplicar la expresión regular a la columna Location date
    df['Location date'] = df['Location date'].str.replace(r'\d+/(\d+)/(\d+)\s.+', r'\1-\2')
    
    # 5 Eliminar la columna Radio Call Sign y heading del DataFrame
    df.drop(columns=["Radio Call Sign (RC)"], inplace=True)
    df.drop(columns=["Heading"], inplace=True)
    
    # 6 Reordenar las columnas del DataFrame
    df = df.reindex(columns=["Name", "Latitude", "Longitude","Location date","Speed (kt)"])
    
    # 7 Guardar el DataFrame modificado en un nuevo archivo con un sufijo "_modified"
    archivos_nuevos = os.path.splitext(file)[0] + "_modificado.csv"
    df.to_csv(archivos_nuevos, index=False)
```
