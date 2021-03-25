################################################################################
### Análisis de Biología Computacional                                       ###
### Ejercicios introductorios al lenguaje R                                  ###
### Sesion 02                                                         			 ###
### Tecnológico de Monterrey    						                                 ###
### BT1013 - marzo, 2021                       		    	                     ###
### Dr. Hugo Tovar hugo.tovar@tec.mx                                         ###
################################################################################

## OBJECTIVE:
## El propósito de este ejercicio es familiarizarte con R y con la forma de
## interactuar con la linea de comandos. El profesor tiene en su presentación
## estos mismos comandos y la idea es que experimentes introduciendolos a la
## consola de R.

## MATRICES

# Cuatro renglones y tres columnas
mat <- matrix(1:12, nrow = 4, ncol = 3)
mat

# MARCO DE DATOS (data freme)

mi_df <- data.frame(
  "entero" = 1:4,
  "factor" = as.factor(c("a", "b", "c", "d")),
  "numero" = c(1.2, 3.4, 4.5, 5.6),
  "cadena" = c("a", "b", "c", "d")
)

mi_df


# LISTAS
miVector <- 1:10
miMatriz <- matrix(1:4, nrow = 2)
miDf     <- data.frame("num" = 1:3, "let" = c("a", "b", "c"))

mi_lista <- list("un_vector" = miVector, "una_matriz" = miMatriz, "un_df" = miDf)

mi_lista
mi_lista$una_matriz

class(mi_lista$un_vector)


## FUNCIONES
# nombre <- function(argumentos) {
#  operaciones
# }


suma <- function(x, y) {
      # suma de los elementos "x" e "y”
      x + y
}

suma(2, 4)



## ESTRUCTURAS DE CONTROL
# IF, ELSE

evaluacion <- function(...) {
  media <- mean(...)
    if(media >= 6){
    print("Aprobado")
  } else {
    print("Reprobado")
  }
}


evaluacion(6, 7, 8, 9, 8)

# FOR

for(numero in 1:10) {
  print(numero)
}


# WHILE

umbral <- 5
valor <- 0
while(valor < umbral) {
  print( paste( "Siguiente: " , valor, " ", umbral  ))
  valor <- valor + 1
}

## FUNCIONES APPLY

# Matriz de juguete
matriz <- matrix(rep(c(1, 2, 3, 4), 4), nrow = 4)
matriz

#Esto es para llamar funcinoes:
#Recibe: objeto donde se va a aplicar la funcion, en que dimensión (renglon, columna) vamos a trabajar con los datos, funcion a correr, argumentos de la funcino a correr
#Primero es renglon y despues columnas - MARGIN =1 trabajara sobre los renlgoes sino sobre columnas

apply(X = matriz, MARGIN = 1, FUN = sum)
apply(X = matriz, MARGIN = 2, FUN = sum)

# MARGIN 1 = renglones, 2 = columnas.

# VARIANTES (lapply, sapply, tapply, vapply, eapply, mapply, rapply)

# Objeto dentro de R
trees
trees[1:3, ]
#lapply te regresa una lista
lapply(X = trees, FUN = mean)
#sapply te regresa lista y simplifica el resultado y te da un vector de la lista
sapply(X = trees, FUN = mean)

?apply


# Guía de estilo de R:
# https://google.github.io/styleguide/Rguide.html
