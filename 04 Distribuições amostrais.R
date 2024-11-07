# DISTRIBUICOES AMOSTRAIS
# DISTRIBUICAO NORMAL
    	#calculo da densidade de probabilidade no ponto x;
      dnorm(x, mean, sd) 
      #Exemplo:
      dnorm(1, 2, 3)
      #normal padrao
      dnorm(1, 0, 1)
      dnorm(-1, 0, 1)
        
  	#calculo da funcao de probabilidade acumulada no ponto x;
      pnorm(x, mean, sd)
      #Exemplo: probabilidade x<1
      pnorm(1, 2, 3)
      pnorm(1.64, 0,1, lower.tail = F)
      pnorm(1.64, 0, 1, lower.tail = T)
      
 	#calculo do quantil correspondente a uma dada probabilidade p;  
      qnorm(p, mean, sd)
      #Exemplo: quantil de deixar 95% de probabilidade abaixo dele:
      qnorm(0.95, 2, 3)
      qnorm(0.95, 0, 1)
        
    	#gerar uma amostra da distribuicao normal de tamanho n;  
      rnomr(n, mean, sd) 
      #Exemplo: gerar uma amostra de 10 elementos
      rnorm(10, 2, 3)

# DISTRIBUICAO t
   	#calculo da densidade de probabilidade no ponto x;
      dt(x, df) 
      #Exemplo:
      dt(1, 12)
      
    	#calculo da funcao de probabilidade acumulada no ponto x;
      pt(x, df)
      #Exemplo: probabilidade x<2
      pt(2, 12)
      
   	#calculo do quantil correspondente a uma dada probabilidade p;  
      qt(p, df)
      #Exemplo: quantil de deixar 95% de probabilidade abaixo dele:
      qt(0.95, 12)
      
   	#gerar uma amostra da distribuicao t de tamanho n;  
      rt(n, df) 
      #Exemplo: gerar uma amostra de 10 elementos
      rt(10, 12)

# DISTRIBUICAO Qui-quadrado
   	#calculo da densidade de probabilidade no ponto x;
      dchisq(x, df) 
      #Exemplo:
      dchisq(1, 12)

    	#calculo da funcao de probabilidade acumulada no ponto x;
      pchisq(x, df)
      #Exemplo: probabilidade x<1
      pchisq(2, 12)

 	#calculo do quantil correspondente a uma dada probabilidade p;  
      qchisq(p, df)
      #Exemplo: quantil de deixar 95% de probabilidade abaixo dele:
      qchisq(0.95, 15)
 
  	#gerar uma amostra da distribuicao qui-quadrado de tamanho n;  
      rchisq(n, df) 
      #Exemplo: gerar uma amostra de 10 elementos
      rchisq(10, 15)
