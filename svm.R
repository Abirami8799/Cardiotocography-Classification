
```{r}
data<-read.csv(file.choose(),header=T) 
data$NSP<-as.factor(data$NSP)
set.seed(123)
ind<-sample(2,nrow(data),replace=TRUE,prob=c(0.7,0.3))
train<-data[ind==1,]
test<-data[ind==2,]
library(ggplot2) 
library(e1071)
model<-svm(NSP~.,data=train)
summary(model)
matrix<-table(predict(model),train$NSP)
matrix
a<-matrix[1,1]
b<-matrix[1,2] 
c<-matrix[1,3]
d<-matrix[2,1]
e<-matrix[2,2] 
f<-matrix[2,3] 
g<-matrix[3,1] 
h<-matrix[3,2] 
i<-matrix[3,3] 
FNa<-(b+c) 
FPa<-(d+g)
TNa<-(sum(e,f,h,i)) 
TNa
FNb<-(d+f)
FPb<-(b+h)
TNb<-(sum(a,c,g,i))
FNc<-(h+i)
FPb<-(c+f)
TNb<-(sum(a,b,d,e))
FPb<-(b+h)
FPb
TNb<-(sum(a,c,g,i))
TNb
FPc<-(c+f)
TNc<-(sum(a,b,d,e))
accuracyA<-(sum(diag(matrix))/sum(matrix)) 
accuracyA
errorA<-(1-accuracyA)
errorA
precisionA<-(a/(a+FPa))
precisionA
recallA<-(a/(a+FNa))
recallA
specificityA<-(TNa/(TNa+FPa))
specificityA
fmeasureA<-((2*precisionA*recallA)/(precisionA+recallA))
fmeasureA
precisionB<-(e/(e+FPb))
precisionB
recallB<-(e/(e+FNb)) 
recallB
specificityB<-(TNb/(TNb+FPb))
specificityB
fmeasureB<-((2*precisionB*recallB)/(precisionB+recallB))
fmeasureB
precisionC<-(i/(i+FPc))
precisionC
recallC<-(i/(i+FNc))
recallC
FNc<-(g+h)
recallC<-(i/(i+FNc))
recallC
specificityc<-(TNc/(TNc+FPc))
specificityc
fmeasureC<-((2*precisionC*recallC)/(precisionC+recallC))
fmeasureC
model<-svm(NSP~.,data=test)
summary(model)
matrix<-table(predict(model),test$NSP)
matrix
a<-matrix[1,1]
b<-matrix[1,2]
c<-matrix[1,3]
d<-matrix[2,1] 
e<-matrix[2,2] 
f<-matrix[2,3] 
g<-matrix[3,1] 
h<-matrix[3,2] 
i<-matrix[3,3] 
FNa<-(b+c) 
FPa<-(d+g)
TNa<-(sum(e,f,h,i)) 
TNa
FNb<-(d+f)
FPb<-(b+h)
TNb<-(sum(a,c,g,i))
FNc<-(h+i)
FPb<-(c+f)
TNb<-(sum(a,b,d,e))
FPb<-(b+h)
FPb
TNb<-(sum(a,c,g,i))
TNb
FPc<-(c+f)
TNc<-(sum(a,b,d,e))
accuracyA<-(sum(diag(matrix))/sum(matrix))
accuracyA
errorA<-(1-accuracyA)
errorA
precisionA<-(a/(a+FPa)) 
precisionA
recallA<-(a/(a+FNa))
recallA
specificityA<-(TNa/(TNa+FPa))
specificityA
fmeasureA<-((2*precisionA*recallA)/(precisionA+recallA))
fmeasureA
precisionB<-(e/(e+FPb))
precisionB
recallB<-(e/(e+FNb)) 
recallB
specificityB<-(TNb/(TNb+FPb))
specificityB
fmeasureB<-((2*precisionB*recallB)/(precisionB+recallB))
fmeasureB
precisionC<-(i/(i+FPc))
precisionC
recallC<-(i/(i+FNc))
recallC
FNc<-(g+h)
recallC<-(i/(i+FNc))
recallC
specificityc<-(TNc/(TNc+FPc))
specificityc
fmeasureC<-((2*precisionC*recallC)/(precisionC+recallC))
fmeasureC

```
