######## Ejercicio practica 2 #########3
classmates <- c(21, 21, 21, 22, 23, 20, 20, 20, 21, 23)
nombresc <- c("Mayela", "Pali", "Fer", "Adrian", "Ceci", "Xime", "Mafer", "Franco","Nataly", "Raul")
names(classmates)<-nombresc
classmates
min (classmates)
max (classmates)
mean(classmates)
classmates == min (classmates) #de classmates cuales son el valor minimmo
classmates == max (classmates)
classmates [classmates==min (classmates)] #selecciona los objetos que tienen el valor minimo
classmates [classmates == max (classmates)]
which(classmates==min (classmates)) -> jovenes #hace un vector con el orden en que se encuentran los objetos
which(classmates==max (classmates)) -> viejos
classmates [-c(jovenes, viejos)]->class2
hist <-hist (class2)



######como lidiar con las Nas#########
nas <- c(2,3,4,5,NA,6,8) #SON COMUNES PERO NO DEBEN SER TRATADAS COMO CEROS
is.na(nas) #nos dice que valores son na's
mean (nas, na.rm=TRUE)#nos calcula la media de todos los valores eliminando las NAs

####filtrar elementos de un vectos
filt <- c(1,2,3,4,5,6,7)
otrovec <- filt [filt*filt > 5] #selecciona los objetos que multiplicados por sí mismos son mayores a 5 y los une a otro vector
otrovec
indices <- filt*filt>5
indices #nos menciona (TRUE FALSE) que objetos multiplicados por si mismos son mayores a 5
sum (indices) #suma todos los elementos dentro de un vector
#en este caso considera TRUE como 1 y FALSE =0

#Filtrado con subset
otrovec <- subset()

#seleccionar con which
z <- c (5,2, -3,8)
which (z*z > 8) #que elementos del vector z cumplen la condición
z [which (z*z > 8)] #nos arroja los elemntos que cumplen la función


###como saber si dos vectores son iguales
x <- c (1,4,9,16,25)
y <- c (1:5)
y <- y*y
#tienen que tener la misma cantidad de objetos y ser totalmente identico
x==y
x=y #si se hace esto se asigna el valor de y a x

xx <- seq (1, 1000, 1)
yy <- seq (1, 1000, 1)
all(xx==yy)
any (xx!=yy) #nos dice si hay algun objeto que sea distinto
sum (xx==yy) #si la suma correspone de a la cantidad de vectores quiere decir que es verdad ya que el TRUE=1 y FALSE=0

#Factor

fac <- c (1,2,3,1,2,3,3,1,1,1,2,2,2,2,3,3,2,2,1,1,1,2,1,3,3,3,3,3)
as.factor(fac) #los categoriza en 1, 2 y 3
table (fac) #nos hace una tabla diciendonos cuanto se repite un elemento

