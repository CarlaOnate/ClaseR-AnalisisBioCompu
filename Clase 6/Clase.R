# Title     : TODO
# Objective : TODO
# Created by: carla
# Created on: 15/04/21


#Instalar el mangeador de paquetes BiocManager - Esto lo agregas en la consola de R
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install()
#Instalar biostrings y sqeinr - lo agregas en la consola de R
BiocManager::install("Biostrings")
install.packages("seqinr")
#Cargar librerias
library("Biostrings")
library("seqinr")

#Leer FASTA
#Te crea una lista, donde un elemento es la secuecia y los otros son atributos.
dengue <- read.fasta("data/dengue_virus.fasta")

#Extraer secuencia del FASTA - el id es del archivo, si cambias de archivo cambiará el nombre
dengue$NC_001477.1

#Statistics secuencia
table(dengue$NC_001477.1)  # - Nos da cuantas A,C,T,G hay en esa lista
#Plotear el table
plot(table(dengue$NC_001477.1))


#Statistics de secuencias
zika <- read.fasta("data/zika_virus.fasta")
table(zika$NC_001477.1)
plot(table(zika$NC_001477.1))

#Comparar
var.test(table(dengue$NC_001477.1), table(zika$ABCDE))  #Poner bien id del archivo de zika

