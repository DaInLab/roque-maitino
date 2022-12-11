# Instalando a biblioteca readxl para importar arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando a biblioteca
library(readxl)

# Importando o arquivo do exercício 9.
# Os dados da planilha estão dispostos em uma só coluna e em ordem crescente.
df.ex9 <- read_excel("./dados/exercicio9.xls",skip = 1, col_names = "salario", col_types = "numeric")

# distribuição de frequência
# transformando os dados em vetor
ex9.em.vetor <- c(df.ex9$salario)
ex9.tabela <-table(ex9.em.vetor)
print(ex9.tabela)

# Histograma
hist(df.ex9$salario, main="Histograma", xlab="Salário do Funcionário", ylab="Frequência")

