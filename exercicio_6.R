# Instalando a biblioteca readxl para importar arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Instalando a biblioteca qcc para criação do diagrama de Paretto
if (!("qcc") %in% installed.packages()) install.packages("qcc")


# Carregando as bibliotecas instaladas
library(readxl)
library(qcc)

# Importando o arquivo do exercício 6.
# Foram acrescentadas as colunas de valor acumulado e porcentagem na planilha original.
df.ex6 <- read_excel("./dados/exercicio6.xls",skip = 1, col_names = c("qualidade","n_pessoas", "acumulado", "porcentagem"), col_types = c("text", "numeric", "numeric", "numeric"))

#Criando o diagrama de Pareto com o pacote qcc (Quality Control Charts)
pareto.chart(df.ex6$n_pessoas, ylab = "Número de pessoas", cumperc = seq(0,100, by=10)) 
