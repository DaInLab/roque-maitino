# Instalando a biblioteca readxl para importar arquivos com extensão .xls ou .xlsx.
if (!("readxl") %in% installed.packages()) install.packages("readxl")

# Instalando a biblioteca ggplot2 para criação de gráficos
if (!("ggplot2") %in% installed.packages()) install.packages("ggplot2")


# Carregando as bibliotecas instaladas
library(readxl)
library(ggplot2)

# Importando o arquivo do exercício 5
df.ex5 <- read_excel("./dados/exercicio5.xls",skip = 1, col_names = c("marcas","pessoas"), col_types = c("text", "numeric"))

#Criando um gráfico de barras simples com ggplot2
ggplot(df.ex5, aes(x = marcas, y = pessoas)) + 
  geom_bar(stat = "identity")

