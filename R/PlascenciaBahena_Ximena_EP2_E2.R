#corremos las librerias necesarias para cargar Biostrings
library(BiocGenerics)
library(parallel)
library(S4Vectors)
library(stats4)
library(IRanges)
library(XVector)
library(GenomeInfoDb)
library(Biostrings)
library(rtracklayer)
###########
sec1 <- "AACTG" #hacemos un vector con la secuencia
as.character(sec1) #damos la indicación a R que la lea como un carácter para que pueda buscar las diferencias al momento de realizar el alineamiento
sec2 <- "ACCTG"
as.character(sec2) #lo mismo con la segunda
alineamiento <- pairwiseAlignment(pattern = sec2, subject = sec1) #la secuencia 2 será el patrón con el que se va a comparar la secuencia 1
#esta función se encuentra en la libreria de biostrings
summary(alineamiento) #el resumen nos arroja diferentes datos como el minimo, media, maximo, etc. Entre ellos los matches y los mistmatches y donde se encuentran en la cadena patrón y 
###en las de comparación, así como la posición de mistmatc

