library(ggplot2)
library(ggplotlyExtra)
library(plotly)
library(glue)


#definir equação
f <- function(x){abs(x)}

#plot 
a <- readline(prompt="Enter a para o plot |x-a|: ")

if (a != 0) {
  a <- strtoi(a)
  f <- function(x){abs(x-a)}
  #lim.sup <- 
  p <-ggplot(data.frame(x=c(-a *10, a*10)), aes(x=x))+
    ggtitle(glue('Plot f(x) = |x - {a}|'))+
    stat_function(fun=f)
  
}else{
  p <-ggplot(data.frame(x=c(-50, 50)), aes(x=x))+
    ggtitle(glue('Plot f(x) = |x - {a}|'))+
    stat_function(fun=f)
}

#p
ggplotly(p)

