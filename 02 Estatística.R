# LEITURA DE DADOS
# DIRETORIO DE TRABALHO
	# setwd("")
	# utilizar "/" ou "\\"

	# verificar
	getwd()

# IMPORTAR ARQUIVOS
	# txt 
	# colunas separadas por espaco
	# dados <- read.table("nome_do_arquivo.txt",header=T)

	# colunas separadas por ponto e virgula
	# dados <- read.table("nome_do_arquivo.txt", header= T, sep=";")

	# colunas separadas por tabulacao
	# dados <- read.table("nome_do_arquivo.txt", header=T, sep="\t")

	# obs: argumento dec="" para separacao de decimais
	# dados <- read.table("nome_do_arquivo.txt", header=T, sep="\t", dec=",")

	# csv 
	# dados <- read.csv("nome_do_arquivo.csv",1)

	# xlsx 
	# require(xlsx)
	# dados <- read.xlsx("nome_do_arquivo.xlsx",n?mero_da_planilha)


dados <- read.table("Exemplo 1.txt", h=T, sep="\t", dec=",")

	edit(dados) # editar os dados
	str(dados) # resumo dos dados
	attach(dados) # anexar dados


# TABELA DE FREQUENCIA
	table(SEXO)
	table(SEXO,ALTURA)


# FUNCOES ESTATISTICAS BASICAS
	
	variavel <- PESO
	
	mean(variavel) 	#media
	median(variavel) 	#mediana
	quantile(variavel,0.5) 	#quantis
	quantile (variavel, 0.25) 	#quantis
	max(variavel) 	#maximo
	min(variavel) 	#manimo
	var(variavel) 	#Variancia
	sd(variavel) 	#desvio Padrao


# RESUMO NUMERICO
	summary(variavel)


# ALTERAR TIPO DE VARIAVEL
	str(dados)
	# obs:criar outra a partir dela

	# mudando para variavel qualitativa
	# character
	# dados$A <- as.character(variavel)
	
	# mudando para categorico
	# factor 
	# dados1$B <- as.factor(variavel)
	
	#mudando para numerico
	#numeric
	#dados1$C <- as.numeric(variavel)


# FILTRO
	dados.S = dados[SEXO=="0",]
	dados.S
	str(dados.S)
	
	# e ? "&" e ou ? "|" 



# GRAFICOS
	#varios graficos na mesma janela
    	par(mfrow=c(2,2))

 	#barras
    	barplot(table(PESO), main = "Grafico de barras", ylab="Peso", col="blue")

  #setores
    	pie(table(SEXO))

	#grafico de dispers?o
   	 plot(ALTURA, main = "Grafico de dispersão", ylab = "Valor", xlab = "Observação", col = "blue")

  #boxplot simples
    	boxplot(PESO)
  #boxplot por grupo
    	boxplot(PESO~SEXO)

# REGRESSAO LINEAR
	plot(PESO ~ ALTURA)
	cor(PESO, ALTURA)
	regressao <- lm(PESO ~ ALTURA)
	regressao
	plot(PESO ~ ALTURA)
	abline(regressao)




