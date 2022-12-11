# Instalando a biblioteca readxl para importar arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Instalando a biblioteca ggplot2 para criação de gráficos
if (!("ggplot2") %in% installed.packages()) install.packages("ggplot2")


# Carregando as bibliotecas instaladas
library(readxl)
library(ggplot2)


# Importando o arquivo do exercício 7
df.ex7 <- read_excel("./dados/exercicio7.xls",skip = 1, col_names = c("areas","atendimentos"), col_types = c("text", "numeric"))

#Criando um gráfico de barras simples com ggplot2
ggplot(df.ex7, aes(x = areas, y = atendimentos)) + 
  geom_bar(stat = "identity")
