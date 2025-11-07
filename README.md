# AnaliseExploratoria
Esse repositório está sendo utilizado para o trabalho da disciplina Prática Estatística.

- O Commit é um comando do Git que registra as mudanças feitas no repositório local. Essas mudanças ficam armazenadas no seu dispositivo com uma descrição, até você usar o comando Push para enviá-las à plataforma GitHub.

- Análise dos dados obtidos com os gráficos:

  - Histograma da idade: O histograma mostra que a maioria dos prisioneiros têm entre 30 e 70 anos, com menor frequência nas faixas etárias mais jovens e mais velhas.
  - Boxplot do tempo preso: o boxplot mostra que, com exceção de um prisioneiro que está preso há quase 90 meses (outlier), a maioria dos prisioneiros cumpre pena entre aproximadamente 54 e 67 meses (4 a 6 anos). A mediana está em torno de 60 meses, indicando que metade dos prisioneiros está presa há menos de 5 anos, e a outra metade há mais de 5 anos.
  - Boxplot do score de periculosidade por escolaridade: observa-se que os prisioneiros com ensino superior apresentam menores valores no score de periculosidade, com a mediana e o limite superior abaixo dos demais grupos. Já os prisioneiros com ensino fundamental e médio apresentam boxplots extremamente semelhantes, com a principal diferença sendo a presença de dois outliers no grupo de ensino médio.
  - Gráfico de barras da reincidência: o gráfico apresenta uma quantidade consideravelmente maior de prisioneiros que não reincidiram, em comparação aos que voltaram a cometer crimes.
  
Definição de algumas medidas de tendência central e dispersão:

- Média: é uma medida de tendência central que representa o valor esperado de um conjunto de dados.

$$\bar{x} = \frac{1}{n}\sum_{i=1}^{n}(x_i) $$

- Mediana: é uma medida de tendência central que representa o valor central de um conjunto de dados ordenados, dividindo o conjunto em duas partes com a mesma quantidade de observações.

- Variância: é uma medida de dispersão que representa o grau de variabilidade dos dados em relação à média. Quando a variância é igual a $0$, todos os valores do conjunto são iguais, e quanto maior for a variância, maior é a dispersão dos dados em torno da média.

$$s^2 = \frac{1}{n-1}\sum_{i=1}^{n}(x_i-\bar{x})^2$$

- Desvio Padrão: é uma medida de dispersão que representa a raiz quadrada da variância, fazendo com que o resultado esteja na mesma unidade dos dados originais, facilitando a interpretação.

$$s = \sqrt{\frac{1}{n-1}\sum_{i=1}^{n}(x_i-\bar{x})^2}$$

- Amplitude: é uma medida de dispersão que indica a diferença entre o maior e o menor valor de um conjunto de dados.
 
$$A = x_{max}-x_{min}$$
