df <- read.table('counts.txt', header=TRUE)

df <- subset(df, select = -c(GeneID,Length) )

d = as.matrix(df)

       
m = data.frame(tissue=substr(colnames(d),1,1),age=as.numeric(sub('.b', '', substr(colnames(d),2,5))))
m$col=ifelse(m$tissue=='B','orange','blue')
rownames(m) = colnames(d)
m

hist(apply(d,1,sum),40)
table(apply(d,1,sum)>9)

d = d[apply(d,1,sum)>9,]


if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("edgeR")
library(edgeR) 

edger = DGEList(d) 
edger = calcNormFactors(edger,method='RLE') 
edger$samples

design = model.matrix(~ tissue + age + tissue:age,data = m)
edger = estimateDisp(edger,design) 
plotBCV(edger)
glm = glmFit(edger,design)


lfc = cbind(tissue   = glmLRT(glm,2)$table$logFC, 
           age   = glmLRT(glm,3)$table$logFC,
           tissue_age   = glmLRT(glm,4)$table$logFC)
rownames(lfc) = rownames(d)
lfc

pv = cbind(tissue   = glmLRT(glm,2)$table$PValue, 
           age   = glmLRT(glm,3)$table$PValue,
           tissue_age   = glmLRT(glm,4)$table$PValue)
rownames(pv) = rownames(d)
pv

qv = apply(pv,2,p.adjust,m='BH') # сделаем поправку на множественное тестирование
apply(qv < 0.05,2,sum) # количество генов значимых для каждого фактора
apply(abs(lfc)>1,2,sum)

cpm = cpm(edger)
qv[order(qv[,3])[1:10],]
qv

cpm.s = cpm[(apply(abs(lfc),1,max)>1)&(apply(qv,1,min)<0.05),]
#cpm.s = cpm.s[apply(qv,1,min)<0.05,] # take significant genes
cpm.s = t(scale(t(cpm.s))) # z-score

hcl = hclust(as.dist(1-cor(t(cpm.s), method='spearman'))) # иерархическая кластеризация

plot(hcl)

cl = cutree(hcl,6) # режем дерево на 6 кластеров
table(cl) # количетсво генов в кластерах


for (i in seq(1,6)){
  means = apply(cpm.s[cl==i,,drop=F],2,mean)  # средние экспресси для данного кластера
  plot(m$age,means,pch=19,col=m$col,main=paste0(paste('cl',as.character(i)),' (',sum(cl==i),')'),log='x',cex=2) # рисуем средние занчения
  for(t in unique(m$tissue)){  # перебираем ткани 
    f = m$tissue == t # отбираем образцы относящиеся к данной ткани
    ss = smooth.spline(m$age[f],means[f],df=4) # апроксимируем зависимость сплайном
    ss = predict(ss,seq(min(m$age),max(m$age),length.out=100)) # интерполируем
    lines(ss,lwd=3,col=m$col[f][1]) # рисуем апроксимацию
}}

