## 1. Elabora un programa que compare tu estatura con tu �dolx y determine si eres m�s altx.
idolo <- 1.50
yo <- 1.68
if(yo>idolo){
  print("Soy m�s alta")
}else if (yo<idolo){
  print("Soy chaparra")
}else{
  print("Medimos lo mismo")
}

#Toma dos archivos fasta de virus distintos. Leelos con Biostrings y compara sus tama�os ( en bp) y determina si el primero es m�s grande que el segundo.
library(BiocGenerics)
library(parallel)
library(S4Vectors)
library(stats4)
library(IRanges)
library(XVector)
library(GenomeInfoDb)
library(Biostrings)
library(rtracklayer)
vir1 <- readDNAStringSet("Xim/examen/NC_001499.fna.txt")
vir2 <- readDNAStringSet("Xim/examen/NC_001928.fna.txt")
pb1 <- width(vir1)
pb2<- width(vir2)
if(pb1>pb2){
  print("Virus 1 es m�s grande que Virus 2")
}else if (p1<p2){
  print("Virus 2 es m�s grande que virus 1")
}else{
  print("Medimos lo mismo")
}

#3. A partir del archivo de anotaci�n del genoma de un organismo determina toma dos prote�nas al azar y compara sus tama�os. 
ecoli <- read.csv ("C:/Users/colis/Documents/Xim/genoma_ecoli.csv",sep = ",",header = TRUE)
ecoli
thrL <- ecoli [1, 10]
thrL
thrA <- ecoli [2, 10]
thrA 
if(thrL>thrA){
  print("Prote�na 1 es m�s grande que Prote�na 2")
}else if (thrL<thrA){
  print("Prote�na 2 es m�s grande que Prote�na 1")
}else{
  print("Medimos lo mismo")
}

#Toma todos los genes de la cadena positiva y todos los de la negativa compara sus tama�os promedio y determina cu�l de estos es m�s grande.

uno <- subset (ecoli, select = c ("Locus","Strand", "Length"))
uno
positivo <- subset (uno, Strand == "+")
negativo<- subset (uno, Strand == "-")
promne <- mean(positivo$Length)
propos <- mean(negativo$Length)
if(promne>propos){
  print("El promedio del tama�o de los genes negativos son m�s grandes que los genes positivos")
}else if (thrL<thrA){
  print("El promedio del tama�o de los genes positivos son m�s grandes que los genes negativos")
}else{
  print("Medimos lo mismo")
}

#�C�mo har�as una condici�n que considere que te gusta el mole y el pozole?
mole <- "SI" 
pozole <- "SI"
if (mole == "SI" & pozole == "SI") {
  print ( "Me gusta el mole y el pozole")}

#�C�mo har�as una condici�n que considere que te gusta el mole o el pozole?
molee <- "SI"
pozolee <- "NO"
if (molee == "SI" | pozolee == "NO") {
  print ( "Me gusta el mole")
  } else {print("Me gusta el pozole")}

#Elabora un programa que con tu fecha de cumplea�os te diga en qu� estaci�n del a�o naciste.

dia <- readline(prompt = "Que d�a naciste: ")
#pongo el dia en la consola
dia <- as.numeric(dia)

mes <- readline(prompt = "Que mes naciste: ")
mes <- as.numeric(mes)

#establecemos los parametros de cada estacion, como cada estacion abarcadistintos meses damos la siguiente indicacion
#por ejemplo, en primavera
#dia tiene que ser igual o mayor a 20 y el mes tiene que ser 3 o
#dia tiene que ser mayor o igual a 1 y el mes tiene que ser igual a 4
#dia tiene que ser igual o mayor a 1 y el mes tiene que ser igual a 5 o
# dia tiene que ser menor o igual a 20 y el mes tiene que ser igual a 6
#s� se cumple con estos parametros imprime "Primavera"
# y as� sucesivamente con dos else if para verano y oto�o 
# si no se cumple ninguno de esos parametros arroja "Invierno" con else
if (dia >= 20 & mes == 3 | dia >= 1 & mes == 4 | dia >= 1 & mes == 5 | dia >= 1 & mes == 6 | dia <= 20 & mes == 6) { 
  print("Primavera")  #indico el dia y mes de inicio y fin de la primavera
} else if (dia >= 21 & mes == 6 | dia >= 1 & mes == 7 | dia >= 1 & mes == 8 | dia >= 1 & mes == 9 | dia <= 21 & mes == 9){ 
  print("Verano")
} else if (dia >= 22 & mes == 9 | dia >= 1 & mes == 10 | dia >= 1 & mes == 11 | dia >= 1 & mes == 12 | dia <= 20 & mes == 12)
  {print("Oto�o")
} else {print("Invierno")}

#Elabora un porgrama que a partir de las calficaciones de tus examenes parciales y 8 quincenales arroje si exentaras o no este curso usando los criterios definidos en el programa del curso. Asume que en las tareas y dem�s actividades tienes 10.
#calificaciones de examenes parciales

E <- c (8, 6, 5)
ProEx <- mean (E)
ProEx <- ProEx/10*5 #hacemos regla de tres ya que el valor de calificacion final de esxamenes parciales es igual a 5

Q <-c (3, 4, 8, 9, 10, 7, 6, 10) #Hago un vector con todas las calificaciones quincenales
PromQ <- mean (Q)
PromQ <- PromQ/10*3
calex <- (PromQ+ProEx) #sumo el valor de los examens dependiendo el porcentaje asignado
calex
ifelse ((calex>=5),"Pasaste bioinfo!!!"," Nos vemos en final") #si la suma de ambos promedios es mayor a 5 pueden pasar ya que solo les faktan 5 puntos para pasar ocn 7 y aprobar la materia
