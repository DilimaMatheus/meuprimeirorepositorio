#vetores

#declaração de vetores, seq para vetores grandes
x <-c(1,2,3)
y<-seq(1:3)

#teste de igualdade

  #caso a caso
    x==y
    
  #todos
    all(x==y)
    
  #ao menos um
    any(x==y)

f <- function(x){x**2}
quad <- f(x)

#quais são iguais
  
  #recebe todos os valores iguais (satisfaz a condição)
  quad[quad==x]
  quad[quad %in% x]  

#vetor de repetição
  v_r = rep(x,3)

# acrescimo do seq 
  seq_1 = seq(from=10, to = 20, by=2)
  
#primeiros 5 elementos  
  seq_1[1:5]
#operações aritméticas com reais são entrada por entrada 
  
  seq_1 + 5
  seq_1/2
  seq_1 *5
  
#tamanho do vetor é dado por 
  length(seq_1)

#operadores relacionais (também válido para vetores e números reais)
  seq_1 == v_r
  seq_1 != v_r
  seq_1 > v_r
  seq_1 < v_r
  seq_1 <= v_r
  seq_1 >= v_r
  
  #não imprime no console o resultado da operaçãqo
  invisible(seq2 <- seq_1[seq_1 > 15])

  #print() imprime o resultado e paste() uma mensagem   
  paste('Olá', seq_1,'!', sep=' ')
  paste0('Olá', seq_1,'!') #sem separador
  
  #exemplo
  
  #obs: paste cria um objeto, cat imprime na tela SOMENTE 
  paste(seq2,collapse=',')
  
  #Ordem de Execução
    #definição
    #operação
  
  #operações
  
  sum(seq_1)
  diff(seq_1)  
  mean(seq_1)
  median(seq_1) #funciona para valores string (quando par)
  max(seq_1)
  min(seq_1)    
  sqrt(seq_1)  
  sort(unique(c(10,10,20,35)))
  
  #remover espaço de vetor de character 
  gsub(pattern='^ ', replacement='', x= c('a', ' a'))
  
  #^ diz que começa com 
  #$ diz que termina com
  # o pipe | indica 'ou' como regex
  
  #table() frequencia dos elementos
  table(seq_1)
  
  #rev() faz o vetor inverter
  v_r
  rev(v_r)
  
  plot(x=seq_1, y=seq_1**2, pch =16, col='blue', las=1, xlab='x', ylab='x²')
  
  hist(seq_1, col='darkred', las=1)
  
  boxplot(seq_1, las=1, col='tomato')

  #funções
  round(1.346, digits=2)
 ceiling(7.1)  
 floor(7.1) 
 
 #trigonometria é em radianos
  cos(0)
  sin(pi/2)

  #strings
  toupper('amen')
  tolower('AAAAAA')
  
  #getwd() busca o diretorio
  #ls() lê o que está na pasta
  #rm() retira tudo
  #list.files()
  #ler csv read.csv('nome_do_arquivo.csv')
  # readxl::read_excel("arquivo.xlsx")
  