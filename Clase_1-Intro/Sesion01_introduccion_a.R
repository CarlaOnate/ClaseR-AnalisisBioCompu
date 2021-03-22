################################################################################
### Análisis de Biología Computacional                                       ###
### Ejercosicios introductorios al lenguaje R                                ###
###                                                               			 ###
### Tecnológico de Monterrey    						                     ###
### BT1013 - marzo, 2021                       			                     ###
### Dr. Hugo Tovar hugo.tovar@tec.mx                                         ### 
################################################################################

## OBJECTIVE:
## El propósito de este ejercicio es familiarizarte con R y con la forma de 
## interactuar con la linea de comandos. El profesor tiene en su presentación
## estos mismos comandos y la idea es que experimentes introduciendolos a la
## consola de R.


## AYUDA
# Para buscar en los manuales en linea, las referencias y otros materiales puedes usar

help.start()

# O para obtener información de una función en específico haz: ?functionName

?setwd

## ASIGNACIÓN
# el símbolo '<-' se usa para indicar asignación. También se usa para guardar 
# información en un objeto:

x <- 45.5


## OPERADORES
# Estos sirven para hacer varias operaciones aritméticas; estos son los más 
# comunes:

# + suma
# - resta
# * multiplicación
# / división
# ^ potencia
# %% modulo - calcula el resto en una división
# %/% división de enteros - calcula la parte entera de una división

10 + 3

10 - 3

10 * 3

10 / 3

10 ^ 3

10 %% 3

10 %/% 3


## ESTRUCTURA DE DATOS

## VECTORES
# crea un vector
miVector <- c(1, 2, 3, 5, 8, 13)

# agregar un dato
miVector <- c(miVector, 79)

# vector como una secuencia
miVector <- 1:10

# vector como una secuencia
miVector <- -43:-30

# Creamos un vector con edades de cinco alumnos
edades <- c(60, 37, 68, 28, 40)

edades[1]
edades[5]

edades[2:4]

# Reescribimos el vector de edades pero añadimos etiquetas a los datos
edades <- c(jara = 60, odile = 37, karla = 68, esther = 28, rebeca = 40)

# Extracción por nombre
edades["jara"]
edades["rebeca"]

# Extracción por posición
edades[c(2, 4)]
edades[c(2:4)]
edades[c(4:2)]

# Extracción por excepción
edades[-1]
edades[-c(2:4)]
edades[-c(3)]
edades[-c(3)]
edades[-100]
edades[-"karla"]

# Extracción por vector lógico
edades >= 60
edades[edades >= 60]


# Guía de estilo de R:
# https://google.github.io/styleguide/Rguide.html