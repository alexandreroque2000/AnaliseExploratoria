#Baixando os pacotes necessários
library(dplyr)   
library(ggplot2) 
library(readxl) 


#Lendo a base de dados
base_trabalho = read_excel("Base_trabalho.xlsx")
View(base_trabalho)

#Transformando as variáveis qualitativas em fatores
base_trabalho$sexo = factor(base_trabalho$sexo, levels = c(0,1),labels = c("Feminino", "Masculino"))
base_trabalho$filhos = factor(base_trabalho$filhos, levels = c(0,1), labels = c("Não","Sim"))
base_trabalho$escolaridade = factor(base_trabalho$escolaridade, levels = c(1,2,3), labels = c("Fundamental","Médio","Superior"))
base_trabalho$casado = factor(base_trabalho$casado, levels = c(0,1),labels = c("Não","Sim"))
base_trabalho$reincidente = factor(base_trabalho$reincidente, levels = c(0,1),labels = c("Não","Sim"))

str(base_trabalho)
View(base_trabalho)

#Análise sobre os dados faltantes
faltantes = colSums(is.na(base_trabalho))
faltantes
#como pode-se ver, não há dados faltantes nessa base de dados.

#Fazendo um histograma da variável Idade
ggplot(data = base_trabalho, mapping = aes(x=idade)) + 
  geom_histogram(breaks=seq(0,100,length.out=15),fill="darkgreen",color="black") + 
  theme_bw() + xlab("Idade em anos") + ylab("Frequência")+
  scale_x_continuous(breaks = seq(0,100,by=20))+
  labs(title = "Histograma - Idade")+
  theme(plot.title = element_text(hjust = 0.5,face = "bold",size = 14))

#Fazendo um boxplot da variável tempo_preso

boxplot(x = base_trabalho$tempo_preso, main = "Box plot - Tempo preso", ylab = "Meses", col = "lightblue", horizontal = TRUE)

#Fazendo um boxplot da variável score_periculosidade por escolaridade

boxplot(base_trabalho$score_periculosidade~base_trabalho$escolaridade, main = "Boxplot - Periculosidade por escolaridade",xlab = "Score periculosidade",ylab = "Escolaridade",col = "orange",horizontal = TRUE)

#Fazendo um gráfico de barras para a variável reincidente
ggplot(data = base_trabalho, mapping = aes(x = reincidente)) + 
  geom_bar(fill = "darkred",color = "black") +
  theme_bw() + xlab("Reincidência") + ylab("")+
  labs(title = "Gráfico de barras - Reincidência")+
  theme(plot.title = element_text(hjust = 0.5,face = "bold",size = 14))


