########## CUERPO DE LA FUNCI�N#######
#nombre_descriptivo <- function(ARGUMENTOS){
#       Cuerpo de la funci�n
#     }
#return (lo que quiero que me regrese la funci�n)

######## Ejemplo ###########
# f(x)=x^2+x-1
mi_funci�n <- function(variable){
  f <- variable*variable+variable-1
  plot (f) #podemos agragar grafiquita
  return(f)
}
uwu <- mi_funci�n(5)
uwu
vectorcin <- 1:50
mi_funci�n(vectorcin)


##### definir una funci�n que dados dos n�meros
#me regrese la suma de ellos

eje2 <- function(x,y) {
 j<- x+y
  return(j)
}

eje2(3,2)

#### con print

eje3 <- function(x,y) {
  j<- x+y
  return(print(paste("La suma de", x, "m�s", y, "es", j)))
}

eje3(3,2)

###qu� le pida los n�meros al usuario

eje4 <- function(x,y) {
  x <- readline(prompt = "Ingresa un n�mero")
  x <- as.numeric(x)
  y <- readline(prompt = "Ingresa otro n�mero")
  y <- as.numeric(y)
  j<- x+y
  return(print(paste("La suma de", x, "m�s", y, "es", j)))
}
eje4 ()

#### Funci�n que contenga suma, resta, divisi�n, m�ltiplicaci�n y exponente
operaciones <- function(a,b) {
  a <- readline(prompt = "Ingresa un n�mero ")
  a <- as.numeric(a)
  b <- readline(prompt = "Ingresa otro n�mero ")
  b <- as.numeric(b)
  c<- a+b
  d<- a-b
  e<- a/b
  f<- a*b
  return(print(paste("La suma de", a, "m�s", b, "es", c,
                     "La resta de", a, "menos", b, "es", d,
                     " La divisi�n de", a, "entre", b, "es", e,
                     "La multiplicaci�n de", a, "por", b, "es", f,)))
}
operaciones()

#### funci�n que calcule el ormedio

promedio <- function(s){
  suma <- sum(s)
  tama�o <- length(s)
  return(suma/tama�o)
}

veve <- c(1,4,5,7,6,7,8,9)
promedio (veve)
mean (veve)


#####divisi�n
division <- function (c,d){
  c <- readline(prompt = "Ingresa un n�mero")
  c <- as.numeric(c)
d <- readline(prompt = "Ingresa otro n�mero")
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
#en el archivo nuevo usar la funci�n
# source("direccion de donde esta en la compu")

raiz
