########## CUERPO DE LA FUNCIÓN#######
#nombre_descriptivo <- function(ARGUMENTOS){
#       Cuerpo de la función
#     }
#return (lo que quiero que me regrese la función)

######## Ejemplo ###########
# f(x)=x^2+x-1
mi_función <- function(variable){
  f <- variable*variable+variable-1
  plot (f) #podemos agragar grafiquita
  return(f)
}
uwu <- mi_función(5)
uwu
vectorcin <- 1:50
mi_función(vectorcin)


##### definir una función que dados dos números
#me regrese la suma de ellos

eje2 <- function(x,y) {
 j<- x+y
  return(j)
}

eje2(3,2)

#### con print

eje3 <- function(x,y) {
  j<- x+y
  return(print(paste("La suma de", x, "más", y, "es", j)))
}

eje3(3,2)

###qué le pida los números al usuario

eje4 <- function(x,y) {
  x <- readline(prompt = "Ingresa un número")
  x <- as.numeric(x)
  y <- readline(prompt = "Ingresa otro número")
  y <- as.numeric(y)
  j<- x+y
  return(print(paste("La suma de", x, "más", y, "es", j)))
}
eje4 ()

#### Función que contenga suma, resta, división, múltiplicación y exponente
operaciones <- function(a,b) {
  a <- readline(prompt = "Ingresa un número ")
  a <- as.numeric(a)
  b <- readline(prompt = "Ingresa otro número ")
  b <- as.numeric(b)
  c<- a+b
  d<- a-b
  e<- a/b
  f<- a*b
  return(print(paste("La suma de", a, "más", b, "es", c,
                     "La resta de", a, "menos", b, "es", d,
                     " La división de", a, "entre", b, "es", e,
                     "La multiplicación de", a, "por", b, "es", f,)))
}
operaciones()

#### función que calcule el ormedio

promedio <- function(s){
  suma <- sum(s)
  tamaño <- length(s)
  return(suma/tamaño)
}

veve <- c(1,4,5,7,6,7,8,9)
promedio (veve)
mean (veve)


#####división
division <- function (c,d){
  c <- readline(prompt = "Ingresa un número")
  c <- as.numeric(c)
d <- readline(prompt = "Ingresa otro número")
d <- as.numeric(d)
return (ifelse(d==0, "Ingresar un valor arriba de 0", c/d))
}
division()

#### ax^2+bx+c=0
cuadratica <- function(a,b,c) {
  
  x1 <- (-b + abs (b^2-4*a*c))/(2*a)
  x2 <- (-b - abs (b^2-4*a*c))/(2*a)
  
  return(paste("Las soluciones son ", x1, "y", x2))
}

cuadratica(2,4,5)

#como guardar mis funciones
#en el archivo nuevo usar la función
# source("direccion de donde esta en la compu")

raiz
