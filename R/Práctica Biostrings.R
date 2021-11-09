#Biostrings
library(BiocGenerics)
library(parallel)
library(S4Vectors)
library(stats4)
library(IRanges)
library(XVector)
library(GenomeInfoDb)
library(Biostrings)
library(rtracklayer)
#Un secuencia
dna1 <- DNAString("ATGC----A")
dna1
#más de una secuencia
dna2<- DNAStringSet(c("AGCT","TCAG", "CGAT","CCC-T"))
dna2
IUPAC_CODE_MAP #Alfabeto 
#seleccionar un fragmento de mi secuencia
dna1 [4:7]
dna2 [3] #arroja la tercera secuencia de mi set
names(dna2) <- paste0("secuencia_", 1:4)
dna2 #pega el nombre secuencia y las enumera del 1 al cuatro
BiocManager::install("XVector")
library(XVector)
misec <- readDNAStringSet("Xim/NC_003874.ffn.txt")
misec


library(BSgenome)



