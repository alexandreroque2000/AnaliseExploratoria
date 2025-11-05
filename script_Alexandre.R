#Baixando os pacotes necessários
library(dplyr)   
library(ggplot2) 
library(readxl) 


#Lendo a base de dados
base_trabalho = read_excel("Base_trabalho.xlsx")

#Transformando as variáveis qualitativas em fatores
base_trabalho$sexo = as.factor(base_trabalho$sexo)
base_trabalho$filhos = as.factor(base_trabalho$filhos)
base_trabalho$escolaridade = as.factor(base_trabalho$escolaridade)
base_trabalho$casado = as.factor(base_trabalho$casado)

str(base_trabalho)

#Análise sobre os dados faltantes
faltantes = colSums(is.na(base_trabalho))
faltantes
#como pode-se ver, não há dados faltantes nessa base de dados.

#Fazendo um histograma da variável Idade
ggplot(data = base_trabalho, mapping = aes(x=idade)) + 
  geom_histogram(fill="darkgreen") + 
  theme_bw() + xlab("Idade") + ylab("Frequência absoluta")

#Fazendo um boxplot da variável tempo_preso
ggplot(data = base_trabalho, mapping = aes(x = tempo_preso,y = " "))+
  geom_boxplot(fill = "lightblue") + 
  theme_bw() + xlab("Tempo preso") + ylab("")

#Fazendo um boxplot da variável score_periculosidade por escolaridade
ggplot(data = base_trabalho, mapping = aes(x = score_periculosidade, y = escolaridade)) +
  geom_boxplot(fill = "orange") +
  theme_bw() + xlab("Periculosidade") + ylab("Escolaridade")

#Fazendo um gráfico de barras para a variável reincidente
ggplot(data = base_trabalho, mapping = aes(x = reincidente)) + 
  geom_bar(fill = "darkred") +
  theme_bw() + xlab("Reincidência") + ylab("")

