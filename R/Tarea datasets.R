#Ejercicio
cells <- read.delim ("C:/Users/JUAN/Desktop/R/cells.txt", header = T, sep = "\t" )
cells
datasetuno <- subset (cells, smoker == "TRUE" & age == "young" & weight == "obese")
datasetuno
datasetdos <- subset (cells, smoker == "FALSE" & age == "old" & weight == "normal")
datasetdos
datasettres <- subset (cells, sex == "female") 
datasettres
datasetcuatro <- subset (cells, sex == "male" & age == "young" & weight == "over")
datasetcuatro
datasetcinco <-  subset (cells, smoker == "TRUE" & sex =="female" & weight == "obese")
datasetcinco
