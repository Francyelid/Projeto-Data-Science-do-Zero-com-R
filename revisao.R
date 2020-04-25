# Declarando variáveis

# Você pode declarar variáveis utilizando "=" ou "<-"
z = readline(prompt="Qual é o seu nome?")
print(z)

# Tipos de Dados
caract = "Texto caractere"
class(caract) 
#retorna 'character'

inteiro = 15L
class(inteiro) 
#retorna 'integer'

num = 15
class(num)
#retorna 'numeric'

logic = T
class(logic)
#retorna 'logical'


# Estrutura de Dados
# Vetor 

vec = 3
is.vector(vec) #Retorna TRUE

# Para adicionar diversos elementos em 1 vetor, use c()
vec = c(1,2,3,"texto")


class(vec) #retorna character pois todos elementos serão do mesmo tipo

# Lista
x = c("texto1","texto2")
y =  c(1,2,3)
z = c(T,F,T)
lista = c(x,y,z) 
class(lista)
#retorna: 'texto1' 'texto2' '1' '2' '3' 'TRUE' 'FALSE' 'TRUE'

# Matriz
mat = matrix(c(1,2),nrow=1,ncol=2,byrow = TRUE) 
#nrow se refere ao número de colunas e ncol se refere ao número de linhas
#byrow insere os elementos dentro de linhas quando TRUE ou em colunas, quando FALSE
#retorna: 1 2
mat

# Dataframe
x = data.frame(nome = c("Ana","Weber","Aquiles"),
               idade = c(24L,27L,2L),
               salario = c(12000,0,0))
#nrow(x) #retorna número de linhas do dataframe
#ncol(x) #retorna número de colunas do dataframe
dim(x) #retorna número de linhas e colunas

# Condicionais
if (3 > 0) {
  
  print("3 é maior que 0")
  
}

if (3 == 0) {
  
  print("3 = 0")
  
} else {
  
  print("3 não é igual a 0")
  
}

a = 1
b = 2
ifelse(a>0,"A maior que 0","A menor que 0")
#retorna A maior que 0

# Funções
# FUNÇÕES R BASE
x = c(1,2,3,4,5,6,7,8,9,10)
#sd(x) #desvio padrão
#mean(x) #média
#head(iris) #primeiras linhas dataframe
#tail(iris) #ultimas linhas dataframe
file.choose() #abre pasta para caminho de arquivos

raizquadrada = function(x) {
  return(x*x)
}
raizquadrada(4)

# Pacotes
#Instala pacote
install.packages("ggplot2", dependencies=TRUE)

# Carrega pacote para ser utilizado no código
library(ggplot2)