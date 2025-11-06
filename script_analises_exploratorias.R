#Baixando os pacotes necessários
library(readxl)

#Lendo a base de dados
base_trabalho = read_excel("Base_trabalho.xlsx")

#Transformando as variáveis qualitativas em fatores
base_trabalho$sexo = factor(base_trabalho$sexo, levels = c(0,1),labels = c("Feminino", "Masculino"))
base_trabalho$filhos = factor(base_trabalho$filhos, levels = c(0,1), labels = c("Não","Sim"))
base_trabalho$escolaridade = factor(base_trabalho$escolaridade, levels = c(1,2,3), labels = c("Fundamental","Médio","Superior"))
base_trabalho$casado = factor(base_trabalho$casado, levels = c(0,1),labels = c("Não","Sim"))
base_trabalho$reincidente = factor(base_trabalho$reincidente, levels = c(0,1),labels = c("Não","Sim"))

#Medidas da variável score_periculosidade
media_periculosidade = mean(base_trabalho$score_periculosidade) #média
pq_periculosidade = quantile(base_trabalho$score_periculosidade, probs = 0.25) #primeiro quartil
mediana_periculosidade = quantile(base_trabalho$score_periculosidade, probs = 0.50) #mediana
tq_periculosidade = quantile(base_trabalho$score_periculosidade, probs = 0.75) #terceiro quantil
var_periculosidade = var(base_trabalho$score_periculosidade) #variância
dp_periculosidade = sd(base_trabalho$score_periculosidade) #desvio padrão

#Medidas da variável idade
media_idade = mean(base_trabalho$idade) #média
pq_idade = quantile(base_trabalho$idade, probs = 0.25) #primeiro quartil
mediana_idade = quantile(base_trabalho$idade, probs = 0.50) #mediana
tq_idade = quantile(base_trabalho$idade,probs = 0.75) #terceiro quartil
var_idade = var(base_trabalho$idade) #variância
dp_idade = sd(base_trabalho$idade) #desvio padrão

##Medidas da variável tempo_preso
media_tempo_preso = mean(base_trabalho$tempo_preso) #média
pq_tempo_preso = quantile(base_trabalho$tempo_preso,probs = 0.25) #primeiro quartil
mediana_tempo_preso = quantile(base_trabalho$tempo_preso,probs = 0.50) #mediana
tq_tempo_preso = quantile(base_trabalho$tempo_preso,probs = 0.75) #terceiro quartil
var_tempo_preso = var(base_trabalho$tempo_preso) #variância
dp_tempo_preso = sd(base_trabalho$tempo_preso) #desvio padrão

#Criando o gráfico de dispersão entre as variáveis tempo_preso e score_periculosidade
plot(base_trabalho$tempo_preso,base_trabalho$score_periculosidade, main = "Tempo preso X Periculosidade", xlab = "Meses", ylab = "Score de periculosidade")

#Calculando a correlação entre as variáveis tempo_preso e score_periculosidade
cor_tempo_periculosidade= cor(x = base_trabalho$tempo_preso, y = base_trabalho$score_periculosidade)
cor_tempo_periculosidade
