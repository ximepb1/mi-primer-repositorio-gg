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
as.character(sec1) #damos la indicaci�n a R que la lea como un car�cter para que pueda buscar las diferencias al momento de realizar el alineamiento
sec2 <- "ACCTG"
as.character(sec2) #lo mismo con la segunda
alineamiento <- pairwiseAlignment(pattern = sec2, subject = sec1) #la secuencia 2 ser� el patr�n con el que se va a comparar la secuencia 1
#esta funci�n se encuentra en la libreria de biostrings
summary(alineamiento) #el resumen nos arroja diferentes datos como el minimo, media, maximo, etc. Entre ellos los matches y los mistmatches y donde se encuentran en la cadena patr�n y 
###en las de comparaci�n, as� como la posici�n de mistmatc

