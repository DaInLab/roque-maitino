# Instalando a biblioteca readxl para importar arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

# Importando o arquivo do exercício 8.
# Coloquei todos os dados da planilha original em uma só coluna.
df.ex8 <- read_excel("./dados/exercicio8.xls",skip = 1, col_names = "alturapaciente", col_types = "numeric")

# distribuição de frequência
# transformando os dados em vetor
ex8.em.vetor <- c(df.ex8$alturapaciente)
ex8.tabela <-table(ex8.em.vetor)
print(ex8.tabela)

# Histograma
hist(df.ex8$alturapaciente, main="Histograma", xlab="Altura do paciente", ylab="Frequência")
