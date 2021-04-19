# Title     : TODO
# Objective : TODO
# Created by: Carla, Lea, Adhair
# Created on: 13/04/21

#Carla Oñate Gardella A01653555


#¿Cuántas observaciones y variables tiene el dataset?
#¿Cuáles son el menor y mayor año registrados ?
#¿Cuál es la media de la variable “age”?
#En su mayoría, hay más pacientes que han tenido contacto con aves a los que no.
#¿En qué estación se han enfermado más?

setwd("/Users/carla/WebstormProjects/NotasClaseR/Clase 5/")
file.exists("./Dataset for website")

pacientes <- read.delim("./Dataset for website", sep=",", header = TRUE, stringsAsFactors = TRUE)
#1.- ¿Cuántas observaciones y variables tiene el dataset?
dim(pacientes) # Num renglones y columnas
#Respuesta: El archivo tiene 617 renglones y 31 columnas.


#"","country","city","year","month","female","age","respSX","pna","mechVent","ards","death","hospDelay","hospDelay4","survTime","antiviral","labData","path","pcgeh","pcgeh4","pcteh","pcteh4","comorbid","complic","whoCase","hemisphere","season","ageCat4","countryCat","sickBird","birdContact"

#2.-¿Cuáles son el menor y mayor año registrados?
min(pacientes[,4])
max(pacientes[,4])

#¿Cuál es la media de la variable “age”?
mean(pacientes[,7])


#En su mayoría, hay más pacientes que han tenido contacto con aves a los que no.


#¿En qué estación se han enfermado más?
summary(pacientes$season)


