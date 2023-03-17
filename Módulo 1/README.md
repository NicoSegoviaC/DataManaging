## Manejo de datos en Python y R (2 clases)

Introducción al manejo de datos en Python y R

Expresiones regulares para la curatoria de bases de datos (Notepad++,BBedit, Python, etc)

Definición operacional. Las expresiones regulares son patrones de búsqueda utilizados para encontrar y manipular cadenas de texto. Estos patrones se crean utilizando caracteres especiales y metacaracteres que permiten buscar patrones específicos en el texto.

En su concepción más general, es llevar la función de "búsquedas y reemplazos" a un siguiente nivel. Por ejemplo, si queremos buscar todas las direcciones de correo electrónico en un texto, podemos crear un patrón de búsqueda utilizando una expresión regular. Este patrón puede incluir caracteres especiales como "@" para representar el símbolo de arroba y metacaracteres como "\w+" para representar una cadena de caracteres alfanuméricos.

Para utilizar expresiones regulares en Python, se utiliza el módulo re. Este módulo proporciona funciones para buscar y manipular cadenas de texto utilizando expresiones regulares.

Ejemplo para poder buscar dirección de correo electrónico en un texto:

```python
import re

texto = "Mi correo es usuario@gmail.com y mi compañero tiene otro correo: usuario2@hotmail.com"

# Crea un patrón de búsqueda utilizando una expresión regular
patron = r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b'

# Busca todas las coincidencias del patrón en el texto
coincidencias = re.findall(patron, texto)

# Imprime todas las coincidencias encontradas
print("Correos electrónicos encontrados: ", coincidencias)
```
Acá una lista de expresiones regulares más utilizadas. 

| Término de búsqueda | Significado  | 
|-----------|-----------|
| \w | Incluye letras, números y guión bajo |
| \t | Búsqueda de tabulaciones (puede usarse en búsquedas y reemplazos) |
| \s | Búsqueda de espacios en blanco, incluyendo espacios, tabulaciones y términos de línea. |
| \r \n | marcadores de términos de línea (puede ser usando en reemplazos. TextWrangler usa \r, jedit y python usan \n |
| \d | Para dígitos de 0-9 |
| . | Cualquier letra, numero o símbolo, exceptuando finales de línea. |



