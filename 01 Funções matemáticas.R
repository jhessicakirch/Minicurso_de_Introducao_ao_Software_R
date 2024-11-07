# FUNCOES MATEMATICAS

  numero <- 2

	sqrt(numero) # raiz quadrada
	abs(numero) # modulo
	exp(numero) # exponencial
	log(numero) # logaritmo
	log(numero, base = 10) # logaritmo
	factorial(numero) # fatorial

# VETOR
	u <- c(numero, numero) # obs: separador de decimais: ponto (.)
	length(u) # tamanho do vetor
	seq(1, 10, by = 1) # gerar vetor de sequencia
	rep(2, 3) # gerar vetor de repeticao

# MATRIZ
	# matrix(c(digitar_todos_os_numeros_na_ordem_da_coluna), numero_de_linhas, numero_de_colunas)
	A <- matrix(c(2,1,3,4), 2, 2) #exemplo
	A
	t(A) # matriz transposta
	t(A)%*%A # produto de matrizes
	#sinal "%*%" designa produto de matrizes
	sum(diag(A)) #traco da matriz
	det(A) #determinante da matriz
	solve(A) #matriz inversa
	