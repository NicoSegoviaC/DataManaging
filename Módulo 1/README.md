## Manejo de datos en Python y R (2 clases)

## Introducción al manejo de datos en Python y R

## Clase 1: expresiones regulares

Expresiones regulares para la curatoria de bases de datos (Notepad++,BBedit, Python, etc)

Definición operacional. Las expresiones regulares son patrones de búsqueda utilizados para encontrar y manipular cadenas de texto. Estos patrones se crean utilizando caracteres especiales y metacaracteres que permiten buscar patrones específicos en el texto.

En su concepción más general, es llevar la función de "búsquedas y reemplazos" a un siguiente nivel. Por ejemplo, si queremos buscar todas las direcciones de correo electrónico en un texto, podemos crear un patrón de búsqueda utilizando una expresión regular. Este patrón puede incluir caracteres especiales como "@" para representar el símbolo de arroba y metacaracteres como "\w+" para representar una cadena de caracteres alfanuméricos. Podemos modificar el formato de una lista de especies para poder simplificarlo o para ahorrar espacio. Entre un sin número de otras funciones útiles al momento de hacer curatoria de un set de datos. En esta clase, veremos algunos usos generales usando BBedit para Mac y notepad++ para Windows. Además de algunos ejemplos en Python solo como muestra. 

En general los comandos wildcards se representan por una backslash y una letra. Por ejemplo: \w
\w es el más general, ya que engloba cualquier letra (a-z) y cualquier dígito (0-9).


| Término de búsqueda | Significado  | 
|-----------|-----------|
| \w | Incluye letras, números y guión bajo |
| \t | Búsqueda de tabulaciones (puede usarse en búsquedas y reemplazos) |
| \s | Búsqueda de espacios en blanco, incluyendo espacios, tabulaciones y términos de línea. |
| \r \n | marcadores de términos de línea (puede ser usando en reemplazos. TextWrangler usa \r, jedit y python usan \n |
| \d | Para dígitos de 0-9 |
| . | Cualquier letra, numero o símbolo, exceptuando finales de línea. |

## Un ejemplo en Python

Para utilizar expresiones regulares en Python, se utiliza el módulo re. Este módulo proporciona funciones para buscar y manipular cadenas de texto utilizando expresiones regulares.

Ejemplo para poder buscar dirección de correo electrónico en un texto usando el módulo de Python re:

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


