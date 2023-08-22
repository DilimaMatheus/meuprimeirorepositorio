#objetos em R
#vetores na aula passada


x=seq(1:4)
y=c(1.2, 1.5, 2.6)
z=c('carro', 'caminhão', 'bicicleta')

#depois corrigir
#for (i in x,y,z){ print(class(i))}

# 'and' -> & ; 'or' -> |
#mais de uma condicional use ((cond1 or/and cond3) or/and cond3)

idades = seq(from=12, to = 42, by=3)

idades[idades>18 & idades < 30]

idades[idades>18 | idades%%2 ==0]

#faltantes: NA -> não se consegue calcular NA, remove-se os NA?

NA
mean(c(1,2,3,NA), na.rm=T) #remover os na da média, faz-se o mesmo para min, max e afins

#NaN não é valor faltante: é Not a number, exemplo: 0/0
0/0

y=c(1:10,NA,NA)

#remove NA's
na.omit(y) #os valores seguem existindo em uma regressão
na.exclude(y) #remove completamente e re-indexa

#equivalente a fillna

y[is.na(y)]<-0
els will automatically set spell slots and hit dice. Chan
#vetor nomeado
idd<-idades[1:2] 
names(idd) <-c('a','b')
names(idd)

#matrizes

v_a = c(1:10)
v_b = c(21:30)

cbind(v_a,v_b)
rbind(v_a,v_b)

A<-matrix(c(1:12), nrow=4, ncol=3)

dim(A)
A[1,2]
A[2,2]

#toda a coluna
A[,1]

#toda a linha
A[1,]

#pesqusiar em todos os elementos
A[which(A%%2 == 0)]

#pesquisar na primeira linha
A[1,][which(A%%2 == 0)]


#pesquisar na primeira coluna
A[,1][which(A%%2 == 0)]

#row, col sum
rowSums(A)
colSums(A)
colMeans(A)
rowMeans(A)

#operações
A*2
A <-matrix(c(1,2,3,4), nrow=2, ncol=2)
#solve e det apenas para quadradas
solve(A)

det(A)
diag(A)

eigen(A)

# A^TB
B<-matrix(c(7,11,13,23), nrow=2, ncol=2)
crossprod(A)

#colnames e rownames para matriz
