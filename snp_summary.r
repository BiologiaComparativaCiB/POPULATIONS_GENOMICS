

library("plotly")
d = read.table("/home/jorge/vcf_full/summary_vcf.txt", col.names=c("path", "num_snp") )

a=nrow(d) 
arreglo=seq(from = 1, to = a, by = 1)

full=cbind(d, arreglo)

path<-subset(full, select=c("arreglo"))
num_snp<-subset(full, select=c("num_snp")) 
arreglo<-subset(full, select=c("arreglo")) 

plot_ly(full, y=~arreglo,x=~num_snp, type = 'bar', orientation = 'h')
