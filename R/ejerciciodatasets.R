ecoli <- read.csv ("C:/Users/colis/Documents/Xim/genoma_ecoli.csv",sep = ",",header = TRUE)
ecoli
uno <- subset (ecoli, select = c ("GeneID","Strand", "Length"))
uno
dos <- subset (uno, Strand == "+")
dos
tres <- subset(uno, Strand == "-")
tres
nrow (dos)
nrow (tres) #tres tiene mas
mean (dos$Length)
cuatro <- subset(dos, Length >= 309.1734)
cuatro
median(dos$Length)
min (dos$Length)
max (dos$Length)

BiocManager:: install("BSgenome.Athaliana.TAIR.TAIR9")
library(BSgenome.Athaliana.TAIR.TAIR9)
