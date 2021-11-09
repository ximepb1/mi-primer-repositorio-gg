###ESTADISTICA MULTIVARIADA###

###Recordando R

## 1. CITAS!
#citar tanto el programa, librerias y paquetes que se usan
citation("ggplot2")

# 2. AYUDA
#?
?ggplot2
#help.search()  
help.search("aov")  
#find()
find("iris")
#example 
#da el ejemplo completo de como realizar una función
example (lm)

# 3. Paquetes y librerias
#instalar
install.packages("vegan")
#cargar
library(vegan)

# 4. Crear objeto 
#vectores
saludo <- c ("Por Asgard")
saludo
colores <- c ("rojo", "morado", "azul")
colores
numeros <- c (1,2,3,4,5,6,7)
#length
#longitud del vector
length(numeros)
#class
#class de elementos de mi vector
class (numeros)
#coercing
#cambiar el vector a otro tipo de acomodo
colores <- as.factor(colores)
colores

## 5. dataframes
#names
#nombre de las columnas
names(iris)
#head
head(iris)
#encabezado,primeros 6 renglones
#tail- ultimos 6 renglones
tail(iris)
#dim-  dimensiones del objeto
dim(iris)
#summary- da el minimo, primer cuartil, mediana, media, trecer cuartil y maximo
summary(iris)

insects <- read.delim ("C:/Users/JUAN/Desktop/R/insects.txt", header = T, sep = "\t")
insects
seed <- read.csv ("C:/Users/JUAN/Desktop/R/seed.csv", header = T, sep = ",") #se carga la base de datos
seed

## 6. Manipulando la base de datos
# $- ubica una columna dentro de una dataframe
# subset
# which ==exactamente iguales, >= mayor o igual a, <= menor o igual a
#utilizando el - se puede quitar datos
# [renglones, columnas]

#1. Crea un nuevo objeto que contenga sólo los nombres de las especies
ejer1 <- iris [ , 5]
ejer1.2 <- subset(iris, select = Species)
#2. Crea un nuevo objeto que NO contenga los nombres de las especies
ejer2 <- iris [ , 1:4]
ejer2.1 <- subset (iris, select = -Species)
ejer2.2 <- subset (iris, select = c ("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width"))
#2a. Guarda ese nuevo objeto como matriz
ejer2 <- as.matrix(ejer2)
#3. Crea un nuevo objeto con los valores del pétalo y los nombres de las especies
ejer3 <- iris [ , 3:5]
ejer3
#3a. Pon a prueba la hipótesis de que el largo del pétalo es diferente entre las especies
## cual es la prueba estadistica? una anova
ejer4 <- aov (Petal.Length ~ Species, data=iris)
ejer4
summary(ejer4)
#se rechaza la Ho 

## 7.Tidying up
# attach, detach para cerrar la base de datos
# rm () remove
# objects() todos los objeots que yo cree en esta sesión

