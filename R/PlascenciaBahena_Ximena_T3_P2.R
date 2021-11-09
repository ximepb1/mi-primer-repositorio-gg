#creo una funcion
fun <- function(dia, mes, año) { #mis variables son dia mes y año
dia <- readline(prompt = "Ingresa día de nacimiento ") #le digo que pida día de nacimiento
  dia <- as.numeric(dia) #le indico que lea el dia como numero y no como caracter
  mes <- readline(prompt = "Ingresa mes de nacimiento ")
  mes <- as.numeric(mes) #lo mismo con mes y año
  año <- readline(prompt = "Ingresa año de nacimiento ")
  año <- as.numeric(año)
  if (dia >= 20 & mes == 3 | dia >= 1 & mes == 4 | dia >= 1 & mes == 5 | dia >= 1 & mes == 6 | dia <= 20 & mes == 6) { 
    print("Primavera")  #indico el dia y mes de inicio y fin de la primavera #imprime primavera
  } else if (dia >= 21 & mes == 6 | dia >= 1 & mes == 7 | dia >= 1 & mes == 8 | dia >= 1 & mes == 9 | dia <= 21 & mes == 9){ 
    print("Verano") #dia y mes de tal parametro o dia y mes de tal parametro, etc
  } else if (dia >= 22 & mes == 9 | dia >= 1 & mes == 10 | dia >= 1 & mes == 11 | dia >= 1 & mes == 12 | dia <= 20 & mes == 12)
  {print("Otoño") #lo mismo con cada esrtacion
  } else {print("Invierno")} #si no se encuentra el dia y mes en ninguna de las funciones anteriores imprime invierno
  if (dia >=21 & mes == 3| dia <=19 & mes == 4) { #nueva función
    print("Aries") #selecciono dias y meses que se abarcan para cada signo
  } else if (dia >=20 & mes == 4| dia <=20 & mes == 5) {
    print("Tauro") #dia igual o mayor a 20 y mes o dia igual o menor a 19 y mes
  } else if (dia >=21 & mes == 5| dia <=20 & mes == 6) {
    print("Géminis") #imprime el signo
  } else if (dia >=21 & mes == 6| dia <=22 & mes == 7) {
    print("Cáncer")
  } else if (dia >=23 & mes == 7| dia <=22 & mes == 8) {
    print("Leo")
  } else if (dia >=23 & mes == 8| dia <=22 & mes == 9) {
    print("Virgo")
  } else if (dia >=23 & mes == 9| dia <=22 & mes == 10) {
    print("Libra")
  } else if (dia >=23 & mes == 10| dia <=21 & mes ==11) {
    print("Escorpio")
  } else if (dia >=22 & mes == 11| dia <=21 & mes == 12) {
    print("Sagitario")
  } else if (dia >=22 & mes == 12| dia <=19 & mes == 1) {
    print("Capricornio")
  } else if (dia >=20 & mes == 1| dia <=18 & mes ==2) {
    print("Acuario")
  }else {print("Piscis")}
  print(2021-año) #por último imprime la edad restando el año actual menos el de su mes de nacimiento
}
fun() #imprimo mi funcion

