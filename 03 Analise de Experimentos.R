#ANALISE DE EXPERIMENTOS:	ExpDes.pt
require(ExpDes.pt)

help(package = "ExpDes.pt")

# DIC
# setwd("")
dados1 <- read.table("Dados1DIC.txt", header=TRUE, sep="	")
dados1
names(dados1)
attach(dados1)

anava <- aov(Valor ~ Trat)
summary(anava)

dic(Trat, Valor)

# colocar o teste tukey, snk, duncan
?tukey
?dic
# O duncan é o mais rigoroso, utilizado mais na área de saúde
# O tukey é mais utilizado nas agrárias


#########################################################

#DBC

t <- rep(c("A","B","C"), 6)
b <- c(rep(1,3), rep(2,3), rep(3,3), rep(4,3), rep(5,3), rep(6,3))
v <- c(12.56,37.32,22.35,19.05,32.54,30.15,10.58,23.67,41.46,12.69,32.45,28.45,
     9.54,30.35,33.45,4.22,44.37,32.78)
dados <- data.frame(Trat = t, Bloc = as.factor(b), Valor = v)
attach(dados)
dados

dbc(Trat, Bloc, Valor, mcomp = "snk")
duncan(Valor, Trat, 10, 528.55)

########################################################################

#DQL
?dql

valor <- c(12.1,14.6,15.1,18,22,14.5,14.3,11.6,20,21.4,14.4,15.6,15.4,12,21.2,14.7)
coluna <- c(rep(1,4), rep(2,4), rep(3,4), rep(4,4))
linha <- c(rep(c(1,2,3,4), 4))
trat <- c("A","D","B","C","C","B","D","A","B","C","A","D","D","A","C","B")

dados <- data.frame(Trat = trat, Linha = as.factor(linha), Coluna = as.factor(coluna), Valor = valor)
attach(dados)
head(dados, 10)

dql(Trat, Linha, Coluna, Valor, mcomp = "snk")
qtukey(0.95, 4, 6)
