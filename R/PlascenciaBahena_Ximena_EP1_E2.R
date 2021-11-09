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


#la función readAAStringSet nos permite leer los archivos fasta de secuencia de aa
humano <- readAAStringSet ("Xim/examen 2/NP_000198.1")
chimpance <- readAAStringSet("Xim/examen 2/NP_001008996.1")
rat <- readAAStringSet("Xim/examen 2/NP_062003.1")
dog <- readAAStringSet("Xim/examen 2/NP_001123565.1")
mouse <- readAAStringSet("Xim/examen 2/NP_001172013.1")
rabbit <- readAAStringSet("Xim/examen 2/NP_001075804.1")
pig <- readAAStringSet("Xim/examen 2/NP_001103242.1")
chicken <- readAAStringSet("Xim/examen 2/NP_990553.1")
cow <- readAAStringSet("Xim/examen 2/NP_001172055.1")
shepp <- readAAStringSet("Xim/examen 2/P01318.2")
elefante <- readAAStringSet("Xim/examen 2/XP_003422420.1")
guinea <- readAAStringSet("Xim/examen 2/NP_001166362_")
coypu <- readAAStringSet("Xim/examen 2/P01330.1")

###calcular frecuencias de aminoacidos, nos arroja frecuencia y probabilidad
alphabetFrequency(elefante)
alphabetFrequency(coypu)
alphabetFrequency(pig)
alphabetFrequency(cow)
alphabetFrequency(humano)
alphabetFrequency(shepp)
alphabetFrequency(chicken)
alphabetFrequency(guinea)
alphabetFrequency(rabbit)
alphabetFrequency(mouse)
alphabetFrequency(dog)
alphabetFrequency(rat)
alphabetFrequency(chimpance)

#tamaño de las secuencias
secuenciaass <- c (humano, chimpance, coypu, guinea, rat, dog, mouse, rabbit, pig, chicken, cow, shepp, elefante)
secuenciaass  #podemos ver el tamaño de la secuencia en el primer renglón width

########instalamos msa ya que por medio de este se puede hacer alineamiento de mpultiples secuencias
BiocManager::install("msa")
library(msa) #cargamos la libreria

###matriz de distancia 
#no pude descargar una de los archivos fasta y solo había uno  con 51 nucleotidos  
# por lo que hice la matriz de distancia con otros archivos
dist <- c (humano, chimpance) #con los siguientes organismos hago un vector
disa <- msa(dist) #hago un alineamiento con la función msa del paquete msa
distaa <- msaConvert(disa, type =  "seqinr::alignment")
BiocManager::install("seqinr") #instalo el paquete seqinr que contiene una función que nos permite hacer la matriz de distancia 
library(seqinr) #cargamos la libreria
distan <- dist.alignment(distaa, "identity") #con la función dis.alignment podemos la alineación que teníamos para que genere la matriz de distancia
distan #imprimimos para observar la martiz de distancia


########alineamiento
ali <- msaClustalOmega(secuenciaass) #la función msa hace un alineamiento múltiple con los parametros de Clustal Omega
ali2 <- msaMuscle(secuenciaass) #la función msa Muscle nos hace los alineamient con los parametros de MUSCLE
#para poder realizar el arbol necesitamos haver una matriz de distancia
distali <- msaConvert(ali, type =  "seqinr::alignment")
distali
distalii <- dist.alignment(distali, "identity") #con la función dis.alignment podemos la alineación que teníamos para que genere la matriz de distancia
#####arbolitooo
arbol <- nj (distalii) #uso la función nj para que calcule la distancia Neighbor-Joining para mi árbol
plot(arbol) #hacemos el plot para ver la gráfica del árbol


