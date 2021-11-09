#### Cargar librerias ###
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
library(seqinr)
library(ape)

### Leer el archivo fasta de nucleotidos ###
concatenado <- c("https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/abaca_bunchy_top_virus_uid28697/NC_010314.ffn", "https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/abalone_herpesvirus_victoria_aus_2009_uid177933/NC_018874.ffn", "https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/abisko_virus_uid399942/NC_035470.ffn", "https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/acartia_tonsa_copepod_circovirus_uid186432/NC_020099.ffn", "https://ftp.ncbi.nlm.nih.gov/genomes/Viruses/achimota_rubulavirus_1_uid265896/NC_025403.ffn")
virus <- readDNAStringSet(concatenado)
### Traducir a aminoacidos
virusaa <- translate (virus )

## Frecuencia y grafica
frecvirus <- alphabetFrequency(virus)
frecvirus <- as.data.frame(frecvirus)
plot(frecvirus)

### trea alineamientos
msaClustalOmega(virus)
msaClustalW(virus)
msaMuscle(virus)