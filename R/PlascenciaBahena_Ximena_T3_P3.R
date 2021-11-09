library(BiocGenerics)
library(parallel)
library(S4Vectors)
library(stats4)
library(IRanges)
library(XVector)
library(GenomeInfoDb)
library(Biostrings)
library(rtracklayer)
library(msa)
#leemos los archivos con DNA y les asignamos un nombre
abaca<- readDNAStringSet ("https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/abaca_bunchy_top_virus_uid28697/NC_010314.ffn")
abalon <- readDNAStringSet ("https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/abalone_herpesvirus_victoria_aus_2009_uid177933/NC_018874.ffn")
abisco<- readDNAStringSet ("https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/abisko_virus_uid399942/NC_035470.ffn")
acartia <- readDNAStringSet ("https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/acartia_tonsa_copepod_circovirus_uid186432/NC_020099.ffn")
achimota <- readDNAStringSet ("https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/achimota_rubulavirus_1_uid265896/NC_025403.ffn")
acholeplasma <- readDNAStringSet ("https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/acholeplasma_virus_mv_l51_uid14573/NC_001341.ffn")
acromobacter <- readDNAStringSet ("https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/achromobacter_phage_jwalpha_uid240045/NC_023556.ffn")
acidianus<- readDNAStringSet ("https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/acidianus_bottle_shaped_virus_2_uid307796/NC_028938.ffn")
fagoacinetobacter <- readDNAStringSet ("https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/acinetobacter_phage_ap205_uid14710/NC_002700.ffn")
aedes<- readDNAStringSet ("https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/aedes_flavivirus_uid39601/NC_012932.ffn")


#hago un vector con las secuencias
secuencias <- c(abaca, abalon, abisco, acholeplasma,fagoacinetobacter, acartia, achimota, acromobacter, acidianus, aedes)
 secuencias
#saco el complemento de mis secuencias
  complement (secuencias)
#reverso complemento con l función reversecomplement
 reverseComplement(secuencias)
#saco el reverso con la función reverse
reverse(secuencias)
#secuencia traducida con la función translate
AA <- translate(secuencias, if.fuzzy.codon = "solve") #traduce toda la secuencia sin importar los codones
##
peque1<- translate(abaca, if.fuzzy.codon = "solve")
peque2 <- translate(acartia, if.fuzzy.codon = "solve")
grande1 <- translate(acromobacter, if.fuzzy.codon = "solve")
grande2 <- translate(abalon, if.fuzzy.codon = "solve")

peques<- c(peque1, peque2)
grandes <- c(grande1, grande2)
msa(peques)#alineamiento secuencias pequeñas
msa(grandes)#alineamiento secuencias grandes

ifelse (secuencias > mean(secuencias), return (secuencias>mean(secuencias)))
