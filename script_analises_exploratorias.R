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

##### Medidas da variável score_periculosidade #####

#média
media_periculosidade = mean(base_trabalho$score_periculosidade) #média

#primeiro quartil
pq_periculosidade = quantile(base_trabalho$score_periculosidade, probs = 0.25) #primeiro quartil

#mediana
mediana_periculosidade = quantile(base_trabalho$score_periculosidade, probs = 0.50) #mediana

#terceiro quartil
tq_periculosidade = quantile(base_trabalho$score_periculosidade, probs = 0.75) #terceiro quantil

#variância
var_periculosidade = var(base_trabalho$score_periculosidade) #variância

#desvio padrão
dp_periculosidade = sd(base_trabalho$score_periculosidade) #desvio padrão


##### Medidas da variável idade #####

#média
media_idade = mean(base_trabalho$idade)

#primeiro quartil
pq_idade = quantile(base_trabalho$idade, probs = 0.25)

#mediana
mediana_idade = quantile(base_trabalho$idade, probs = 0.50)

#terceiro quartil
tq_idade = quantile(base_trabalho$idade,probs = 0.75)

#variância
var_idade = var(base_trabalho$idade)

#desvio padrão
dp_idade = sd(base_trabalho$idade)


##### Medidas da variável tempo_preso #####

#média
media_tempo_preso = mean(base_trabalho$tempo_preso)

#primeiro quartil
pq_tempo_preso = quantile(base_trabalho$tempo_preso,probs = 0.25)

#mediana
mediana_tempo_preso = quantile(base_trabalho$tempo_preso,probs = 0.50)

#terceiro quartil
tq_tempo_preso = quantile(base_trabalho$tempo_preso,probs = 0.75)

#variância
var_tempo_preso = var(base_trabalho$tempo_preso) 

#desvio padrão
dp_tempo_preso = sd(base_trabalho$tempo_preso) 



#Criando o gráfico de dispersão entre as variáveis tempo_preso e score_periculosidade
plot(base_trabalho$tempo_preso,base_trabalho$score_periculosidade, main = "Tempo preso X Periculosidade", xlab = "Meses", ylab = "Score de periculosidade")

#Calculando a correlação entre as variáveis tempo_preso e score_periculosidade
cor_tempo_periculosidade= cor(x = base_trabalho$tempo_preso, y = base_trabalho$score_periculosidade)
cor_tempo_periculosidade
