if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("Rsubread")

library(Rsubread)
fls <- dir(".", "bam$")

counts <- featureCounts(files=fls, annot.ext = 'merged.gtf', isGTFAnnotationFile=TRUE)

write.table(
  x=data.frame(counts$annotation[,c("GeneID","Length")],
               counts$counts,
               stringsAsFactors=FALSE),
  file="counts.txt",
  quote=FALSE,
  sep="\t",
  row.names=FALSE)

df <- read.table('counts.txt', header=TRUE)

df <- subset(df, select = -c(GeneID,Length) )

correlation = cor(df,method = 'spearman')
heatmap(correlation,
        symm = TRUE,
        distfun = function(x){as.dist(1-x)})

mds=cmdscale(1-correlation,k=2)
plot(mds[,1],mds[,2], pch=19)

