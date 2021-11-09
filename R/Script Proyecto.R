datos_20 <- read.csv ("C:/Users/JUAN/Desktop/R/Proyecto final multi/datos_2020.csv", header = T, sep = "\t") #se carga la base de datos
datos_20#imprimir la base de datos
#####AJUSTAR MI BASE DE DATOS
datos_10 <- read.csv ("C:/Users/JUAN/Desktop/R/Proyecto final multi/datos_2010.csv", header = T, sep = "\t") #se carga la base de datos
datos_10#imprimir la base de datos
#####AJUSTAR MI BASE DE DATOS
#Los datos se dividen en municipios, hay una sección que hace el conteo total por estado, me quedaré con eso para simplificar mi base de datos
#Hago una selección de los datos totales de cada Estado
nueva20 <- subset(datos_20, NOM_LOC=="Total de la Entidad")
nueva20

#Simplificamos las tablas eliminando datos no númericos
datos2020N <- nueva20 [, c (-1:-9, -190:-211, -213,-214)]
datos2020N #imprimo para revisar que los datos estén corectos
datos2020N<- sapply(datos2020N,as.numeric) 
datos2020N
datos2020<- scale(datos2020N, center = TRUE, scale = TRUE)
datos2020 #escaló y centró mis datos para que las variables tengan el mismo peso al hacer el análisis de cluster 
rownames (datos2020) <- c ("Aguascalientes", "Baja California", "Baja California Sur", "Campeche", "Coahuila", "Colima", "Chiapas", "Chihuahua", "Cd. de México", "Durango", "Guanajuato", "Guerrero", "Hidalgo", "Jalisco", "E. México", "Michoacán", "Morelos", "Nayarit", "Nuevo León", "Oaxaca", "Puebla", "Querétaro", "Quintana Roo", "San Luis Potosí", "Sinaloa", "Sonora", "Tabasco", "Tamaulipas", "Tlaxcala", "Veracruz", "Yucatán", "Zacatecas")
datos2020#le pongo el nombre de los estados a la descripción de la columna
#######lo mismo pero con la de 2010
nueva10 <- subset(datos_10, NOM_LOC=="Total de la Entidad")
nueva10
datos2010N <- nueva10 [, c (-1:-9, -199)]
datos2010N #imprimo para revisar que los datos estén corectos
datos2010N<- sapply(datos2010N,as.numeric) 
datos2010N
datos2010<- scale(datos2010N, center = TRUE, scale = TRUE)
datos2010 #escaló y centró mis datos para que las variables tengan el mismo peso al hacer el análisis de cluster 
rownames (datos2010) <- c ("Aguascalientes", "Baja California", "Baja California Sur", "Campeche", "Coahuila", "Colima", "Chiapas", "Chihuahua", "Cd. de México", "Durango", "Guanajuato", "Guerrero", "Hidalgo", "Jalisco", "E. México", "Michoacán", "Morelos", "Nayarit", "Nuevo León", "Oaxaca", "Puebla", "Querétaro", "Quintana Roo", "San Luis Potosí", "Sinaloa", "Sonora", "Tabasco", "Tamaulipas", "Tlaxcala", "Veracruz", "Yucatán", "Zacatecas")
datos2010 #le pongo el nombre de los estados a la descripción de la columna
##################################################################
##############ANALISIS############################################

#Estas son las variables que me interesan

# PCDISC_MOT: PERSONAS CON DISCAPACIDAD MOTRIZ
# PCDISC_VIS: PERSONAS CON DISCAPACIDAD VISUAL
# PCDISC_LENG: PERSONAS CON DISCAPACIDAD DE LENGUAJE
# PCDISC_AUD: PERSONAS CON DISCAPACIDAD AUDITIVA
# PCDISC_MOT2: Personas que tienen mucha dificultad o no pueden bañarse, vestirse o comer.
# PCDISC_MEN: Personas que tienen mucha dificultad o no pueden recordar o concentrarse.
# P3A5_NOA: PERSONAS DE 3 A 5 AÑOS QUE NO VAN A LA ESCUELA
# P6A11_NOA: PERSONAS DE 6 A 11 AÑOS QUE NO VAN A LA ESCUELA
# P12A14NOA PERSONAS DE 12 A 14 AÑOS QUE NO VAN A LA ESCUELA
# P8A24AN: PERSONAS DE 8 A 24 QUE NO VAN A LA ESCUELA
# P15YM_AN: PERSONAS DE 15 A 130 AÑOS UE NO SABEN LEER NI ESCRIBIR
# P8A14AN: Personas de 8 a 14 años de edad que no saben leer y escribir un recado
# P15A17A: Personas de 15 a 17 años de edad que van a la escuela.
# P18A24A: Personas de 18 a 24 años de edad que van a la escuela.
# P15YM_SE: Personas de 15 a 130 años de edad que no aprobaron ningún grado escolar o que sólo tienen nivel preescolar.
# P15PRI_IN: Personas de 15 a 130 años de edad que tienen como máxima escolaridad hasta el quinto grado aprobado en primaria.
# P15PRI_CO: Personas de 15 a 130 años de edad que tienen como máxima escolaridad 6 grados aprobados en primaria.
# P15SEC_IN: Personas de 15 a 130 años de edad que tienen como máxima escolaridad hasta segundo grado aprobado de secundaria. 
# P15SEC_CO: Personas de 15 a 130 años de edad que tienen como máxima escolaridad 3 grados aprobados en secundaria.
# PDESOCUP: PERSONAS SIN TRABAJO DE 12 A 130
# PSINDER: PERSONAS SIN SERVCIO MEDICO
# VPH_S_ELEC: Viviendas particulares habitadas que no tienen energía eléctrica
# VPH_AGUAFV: Viviendas particulares habitadas que no tienen agua entubada 
# VPH_NODREN: Viviendas particulares habitadas que no tienen drenaje. 
# VPH_SNBIEN: Viviendas particulares habitadas donde no cuentan con refrigerador; lavadora; horno de microondas automóvil o camioneta; motocicleta o motoneta; bicicleta que se utilice como medio de transporte; algún aparato o dispositivo para oír radio; televisor; computadora, laptop o tablet; Internet; línea telefónica fija; teléfono celular; servicio de televisión de paga (cable o satelital); servicio de películas, música o videos de paga por Internet ni consola de videojuegos

#base de datos agrupada por discapacidades año 2020
datos2020_D <- datos2020 [ , c ("PCDISC_MOT", "PCDISC_VIS", "PCDISC_LENG", "PCDISC_AUD", "PCDISC_MOT2", "PCDISC_MEN" )]
datos2020_D
#base de datos agrupada por discapacidades año 2010
datos2010_D <- datos2010 [ , c ("PCDISC_MOT", "PCDISC_VIS", "PCDISC_LENG", "PCDISC_AUD", "PCDISC_MOT2", "PCDISC_MEN" )]
datos2010_D
#Agrupados por problemas en educación, 2020
datos2020_E <- datos2020 [ , c("P3A5_NOA", "P6A11_NOA", "P12A14NOA", "P8A14AN", "P15YM_AN", "P15A17A", "P18A24A", "P15YM_SE", "P15PRI_IN", "P15PRI_CO", "P15SEC_IN", "P15SEC_CO")]
datos2020_E
#Agrupados por problemas en educación 2010
datos2010_E <- datos2010 [ , c("P3A5_NOA", "P6A11_NOA", "P12A14NOA", "P8A14AN", "P15YM_AN", "P15A17A", "P18A24A", "P15YM_SE", "P15PRI_IN", "P15PRI_CO", "P15SEC_IN", "P15SEC_CO")]
datos2010_E
#Agrupados por falta de recursos economicos, de salud y vivienda 2020
datos2020_R <- datos2020 [ , c( "PDESOCUP", "PSINDER", "VPH_SNBIEN", "VPH_S_ELEC", "VPH_AGUAFV", "VPH_NODREN")]
datos2020_R
#Agrupados por falta de recursos economicos, de salud y vivienda 2010
datos2010_R <- datos2010 [ , c( "PDESOCUP", "PSINDER", "VPH_SNBIEN", "VPH_S_ELEC", "VPH_AGUAFV", "VPH_NODREN")]
datos2010_R #la variable VPH_NDEAED no esta incluida en los datos del INEGI de 2010

#cluster jerarquico de estados por indices de discapacidad 2020
distD <- dist(datos2020_D, method = "euclidean", diag = TRUE)
distD #saco la matriz de distancia de los datos de discapacidad, con el método euclideano y con la diagonal para no confundirme xd
clusD <- hclust (distD, "average") #hago el clust jerarquico, average basado en el metodo UPGMA de los árboles filogenéticos
clusD #imprimir
dendD <- as.dendrogram(clusD) #los datos del cluster los guarda como un dendograma
plot(dendD, main = "Capacidades diferentes 2020")
dendcolorD<- rect.hclust(clusD, k=6, border = c ("magenta", "blue", "pink", "red", "green", "purple", "yellow", "brown"))
dendcolorD #separe el árbol en 6 grupos con colores, meramente para tener una idea de la  agrupación


#cluster jerarquico de estados por problemas de educación 2020
#hago lo mismo de discapacidad pero con los datos de educación de 2020 y 2010
distE <- dist(datos2020_E, method = "euclidean")
distE
clusE <- hclust (distE, "average") #average basado en el metodo UPGMA
clusE 
dendE <- as.dendrogram(clusE) #los datos del cluster los guarda como un dendograma
plot(dendE, main = "Educación")
dendcolorE<- rect.hclust(clusE, k=10, border = c ("magenta", "blue", "pink", "red", "green", "purple", "yellow", "brown"))
dendcolorE

#Prueba de Hotelling para comparar los datos de educación de 2010 y 2020, y observar si hubo un cambio 
#creamos bases de datos con los números normales sin las unidades a escala
datos2020HE <- datos2020N [ , c( "P3A5_NOA", "P6A11_NOA", "P12A14NOA", "P8A14AN", "P15YM_AN", "P15A17A", "P18A24A", "P15YM_SE", "P15PRI_IN", "P15PRI_CO", "P15SEC_IN", "P15SEC_CO")]
datos2020HE
datos2010HE <- datos2010N [ , c( "P3A5_NOA", "P6A11_NOA", "P12A14NOA", "P8A14AN", "P15YM_AN", "P15A17A", "P18A24A", "P15YM_SE", "P15PRI_IN", "P15PRI_CO", "P15SEC_IN", "P15SEC_CO")]
datos2010HE
library(corpcor)# cargamos corpcor para cargar la libreria de Hotelling
library(Hotelling) #contiene la función hotelling.test
hotE <- hotelling.test (datos2020HE, datos2010HE, shrinkage=FALSE, perm = FALSE)
hotE
#valor de p menor a 0.05 aceptamos la HA
mean(datos2010HE) #sacamos la media de la matriz con los datos del 2010
mean(datos2020HE) #sacamos la media de la matriz con los datos del 2020
#las medias las quise observar para analizar que tanto cambiaron los datos


#cluster jerarquico de estados por falta de recursos 2020
#hacemos lo mismo que con los clusters anteriores pero con los datos de recursos
distR <- dist(datos2020_R, method = "euclidean")
distR
clusR <- hclust (distR, "average") #average basado en el metodo UPGMA
clusR 
dendR <- as.dendrogram(clusR) #los datos del cluster los guarda como un dendograma
plot(dendR, main = "Falta de Recursos")
dendcolorR<- rect.hclust(clusR, k=12, border = c ("magenta", "blue", "pink", "red", "green", "purple", "yellow", "brown"))
dendcolorR

#Prueba de Hotelling para comparar los datos de falta de recursos de 2010 y 2020
#creamos bases de datos con los números normales sin las unidades a escala
datos2020HR <- datos2020N [ , c( "PDESOCUP", "PSINDER", "VPH_SNBIEN", "VPH_S_ELEC", "VPH_AGUAFV", "VPH_NODREN")]
datos2020HR
datos2010HR <- datos2010N [ , c( "PDESOCUP", "PSINDER", "VPH_SNBIEN", "VPH_S_ELEC", "VPH_AGUAFV", "VPH_NODREN")]
datos2010HR
#realizar prueba de hotelling
hotR <- hotelling.test (datos2020HR, datos2010HR, shrinkage=FALSE, perm = FALSE)
hotR
#valor de p menor a 0.05 aceptamos la HA
mean(datos2010HR) #sacamos la media de la matriz con los datos del 2010
mean(datos2020HR) #sacamos la media de la matriz con los datos del 2020
#las medias las quise observar para analizar que tanto cambiaron los datos



