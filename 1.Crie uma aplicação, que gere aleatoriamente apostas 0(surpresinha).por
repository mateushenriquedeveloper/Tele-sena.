programa {
    
    inclua biblioteca Util --> u
    
	funcao inicio() {
	    
	    /*Crie uma aplicação, que gere aleatoriamente apostas (surpresinha) 
	    para os principais jogos de loteria do Brasil (Mega-Sena, Quina, 
	    Lotomania e Lotofácil).*/
		
		inteiro tipoAposta 
		inteiro vezesJogadas
		
		escreva("-------- Menu de aposta ---------\n")
		escreva("[1]         Mega                 \n")
		escreva("[2]        Quina.                \n")
		escreva("[3]      Loto-mania              \n")
		escreva("[4]      Loto-fácil              \n")
		escreva("---------------------------------\n")
		escreva("Digite o número correspondente do tipo de aposta que você quer jogar: ")
		leia(tipoAposta)
		escreva("Quantas vezes você deseja jogar a mesma aposta? ")
		leia(vezesJogadas)

//********************************************************************************************************************************  	

		inteiro quantidadeDezenas
		inteiro numerosGerados[50]
		
//********************************************************************************************************************************  	

		escolha(tipoAposta){
		    
		    caso 1: 
		
    		escreva("Quantas dezenas vc quer apostar? (6 a 15 dezenas) \n")
    		leia(quantidadeDezenas)
    		
    		enquanto(quantidadeDezenas < 6 ou quantidadeDezenas > 15){
    		    escreva("Na Mega-cena só podem ser apostados de 6 a 15 dezenas, tente novamente:")
    		    leia(quantidadeDezenas)
    		}
    		
    		limpa()
    		
    		para(inteiro c = 0; c< vezesJogadas; c++){
                gerarNumeros(numerosGerados, quantidadeDezenas, 1, 60)
        		ordenar(numerosGerados, quantidadeDezenas)
        		para(inteiro i = 0; i< quantidadeDezenas; i++){
        		    escreva(numerosGerados[i], " ")
    	    	}
    	    	escreva("\n\n")
    		}
    		
    		real valorDezenas[16]
		    
		    valorDezenas[6]  = 4.50
		    valorDezenas[7]  = 31.50
		    valorDezenas[8]  = 126.00
		    valorDezenas[9]  = 378.00
		    valorDezenas[10] = 945.00
		    valorDezenas[11] = 2.079
		    valorDezenas[12] = 4.158
		    valorDezenas[13] = 7.722
		    valorDezenas[14] = 13513.50
		    valorDezenas[15] = 22520.50
    		    
    		gasto(valorDezenas, quantidadeDezenas, vezesJogadas)
    		
    		pare
    		
//********************************************************************************************************************************  	
    		
    		caso 2:
		
    		escreva("Quantas dezenas vc quer apostar? (5 a 15 dezenas) \n")
    		leia(quantidadeDezenas)
    		
    		enquanto(quantidadeDezenas < 5 ou quantidadeDezenas > 15){
    		    escreva("Na Quina só podem ser apostados de 5 a 15 dezenas, tente novamente:")
    		    leia(quantidadeDezenas)
    		}
    		
    		limpa()
    		
    		para(inteiro c = 0; c< vezesJogadas; c++){
                gerarNumeros(numerosGerados, quantidadeDezenas, 1, 80)
        		ordenar(numerosGerados, quantidadeDezenas)
        		para(inteiro i = 0; i< quantidadeDezenas; i++){
        		    escreva(numerosGerados[i], " ")
    	    	}
    	    	escreva("\n\n")
    		}
    		
    		real valorDezenasQuina[16]
		    
		    valorDezenasQuina[5]  = 2.00
		    valorDezenasQuina[6]  = 12.00
		    valorDezenasQuina[7]  = 42.00
		    valorDezenasQuina[8]  = 112.00
		    valorDezenasQuina[9]  = 252.00
		    valorDezenasQuina[10] = 504.00
		    valorDezenasQuina[11] = 924.00
		    valorDezenasQuina[12] = 1584.00
		    valorDezenasQuina[13] = 2574.00
		    valorDezenasQuina[14] = 4004.00
		    valorDezenasQuina[15] = 6006.00
    		    
    		gasto(valorDezenasQuina, quantidadeDezenas, vezesJogadas)
    		
    		pare
    		
//********************************************************************************************************************************  	
    		
    		caso 3: 
		
    		escreva("Na lotomania o número fixo de dezenas é 50 ")
    		quantidadeDezenas = 50
    		
    		limpa()
    		
    		para(inteiro c = 0; c< vezesJogadas; c++){
                gerarNumeros(numerosGerados, quantidadeDezenas, 1, 100)
        		ordenar(numerosGerados, quantidadeDezenas)
        		para(inteiro i = 0; i< quantidadeDezenas; i++){
        		    escreva(numerosGerados[i], " ")
    	    	}
    	    	escreva("\n\n")
    		}
    		
    		real valorLotomania = 2.50
		   
    	    escreva("Você gastou o total de R$", valorLotomania * vezesJogadas,"\n")
    		
    		pare
    		
//********************************************************************************************************************************  	

    		caso 4:
		
    		escreva("Quantas dezenas vc quer apostar? (15 a 20 dezenas) \n")
    		leia(quantidadeDezenas)
    		
    		enquanto(quantidadeDezenas < 15 ou quantidadeDezenas > 20){
    		    escreva("Na Loto-fácil só podem ser apostados de 15 a 20 dezenas, tente novamente:")
    		    leia(quantidadeDezenas)
    		}
    		
    		limpa()
    		
    		para(inteiro c = 0; c< vezesJogadas; c++){
                gerarNumeros(numerosGerados, quantidadeDezenas, 1, 25)
        		ordenar(numerosGerados, quantidadeDezenas)
        		para(inteiro i = 0; i< quantidadeDezenas; i++){
        		    escreva(numerosGerados[i], " ")
    	    	}
    	    	escreva("\n\n")
    		}
    		
    		real valorDezenasLotofacil[21]
		    
		    valorDezenasLotofacil[15]  = 2.50
		    valorDezenasLotofacil[16]  = 40.00
		    valorDezenasLotofacil[17]  = 2040.00
		    valorDezenasLotofacil[18]  = 2040.00
		    valorDezenasLotofacil[19]  = 9690.00
		    valorDezenasLotofacil[20]  = 38760.00
    		    
    		gasto(valorDezenasLotofacil, quantidadeDezenas, vezesJogadas)
    		
    		pare
	
		}
	}
	
//********************************************************************************************************************************  

	funcao gerarNumeros(inteiro vetor[], inteiro quantidadeDezenas, inteiro valorInicial, inteiro valorFinal){
	    para(inteiro i = 0; i< quantidadeDezenas; i++){
		    
		    inteiro numeroGerado =  u.sorteia(valorInicial, valorFinal)
		    
		    se(existe(vetor, numeroGerado, i)){
		        i--
		    }
		    senao{
		        vetor[i] = numeroGerado
		    }
		}
	    
	}
	
	funcao logico existe(inteiro numerosGerados[], inteiro numeroGerado, inteiro quantidadeGerada){
	    
	    para(inteiro j = 0; j< quantidadeGerada; j++){
		        se(numerosGerados[j] == numeroGerado){
		            retorne verdadeiro
		        }
		    }
		retorne falso
	}
	
	funcao gasto(real valorDezenas[], inteiro quantidadeDezenas, inteiro vezesJogadas){
	    escreva("Você gastou o total de R$", valorDezenas[quantidadeDezenas]* vezesJogadas, "\n")
	}
	
	funcao ordenar (inteiro vetor[], inteiro tamanho){
		para (inteiro i = 0; i < tamanho; i++){
			para (inteiro j = 0; j < tamanho-1; j++){
				se (vetor [j] > vetor[j+1]){
					troca (vetor, j, j+1)
				}
			}
		}
	}
	
	funcao troca (inteiro v[], inteiro a, inteiro b){
		inteiro c = v[a]
		
		v[a] = v[b]
		v[b] = c
	}
	
//********************************************************************************************************************************  	

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 250; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */