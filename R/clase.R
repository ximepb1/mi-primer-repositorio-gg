###bioconductor

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(version = "3.13")

BiocManager::install("Biostrings")

f <- "cadena de texto"
library(BiocGenerics)
library(parallel)
library(Biostrings)
DNA_ALPHABET
DNA_BASES
f<-DNAString("ACTTTTGATCTCTGAGCCC")#una secuencia de 29 letras 
e<-DNAString("AC--GGATCTGCACAA")
alphabetFrequency(f) #nos dice la cantidad de G,C,T,etc que hay
alphabetFrequency(f, as.prob = TRUE)#porcentaje de la cantidad de pares de bases
c (f,e)->r
r #une las secuencias
misecuenc <- readAAStringSet("~/Dowloads")

