
poder<- c(10, 10, 5, 10, 4, 8, 9, 2, 7, 7 ) 
nombres <- c ("Superman", "Batman", "Sailor Moon", "Thor", "Viuda Negra", "Spiderman", "Mujer Maravilla", "Chapulin Colorado", "Capitan América", "Iron Man")
names(poder)<- nombres
poder
ifelse(poder>=8, "Un poder es una gran responsabilidad", "¿Quién podrá ayudarnos")
