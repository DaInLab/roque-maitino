# Instalando biblioteca readxl para importar para o R arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Carregando o pacote readxl
library(readxl)

# Importando o arquivo do exercício 4
df.ex4 <- read_excel("./dados/exercicio4.xls",skip = 1, col_names = "salarios", col_types = c("numeric"))

# distribuição de frequência

# transformando os dados em vetor
ex4.em.vetor <- c(df.ex4$salarios)
ex4.tabela <-table(ex4.em.vetor)
print(ex4.tabela)

# Histograma

hist(ex4.tabela, main="Histograma", xlab="Dados", ylab="Frequência")