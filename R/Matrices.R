#creación de matrices
q <- matrix(c(1,5,3,-4), nrow = 2, ncol = 2)#la matriz se llena por columnas
m <- matrix(c(1,5,3,-4,5,6), nrow = 3, byrow = TRUE) #los ordena por renglones

#dimensiones de una matriz
dim(q) #cuantos renglones y columnas hay (renglon, columna)

#matriz sin elementos
w<-matrix (nrow = 2, ncol = 2)
w [1,1] <- "te"
w [2,1] <- "rdido"
w [1,2] <- "amo"
w [2,2] <- "un perro"
w
colnames(w)<-c("hi", "bye") [1:2]
rownames (w)<-c("ho","adi") [3:4]
w

help (autocomplete)
