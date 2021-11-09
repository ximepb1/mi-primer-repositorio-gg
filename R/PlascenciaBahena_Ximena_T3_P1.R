parcial <- c(2,2,6) #calificaciones de examenes parciales
tareaqui <-  c(10, 4, 7, 8, 9, 5, 9)
parcial <- sum(parcial)/length(parcial)*50/10
parcial #promedio de parciales con el porcentaje de 50% que valen en calificacion final
tareaqui <- sum(tareaqui)/length(tareaqui)*30/10
tareaqui #lo mismo con tareas y quincenales pero con el 30%
if(parcial+tareaqui>50 & sum(parcial)/length(parcial)>6){
  print("Aprobaste el semestre")
}else{
  print("Nos vemos en final")
}
#el parcial más taras y quincenales tienen que ser mayores a 50 para pasar
#ya que suponiendo que con los otros 20 cumplen el 70 aprobatorio
#y el promedio de los parciales tiene que ser mayor a 6