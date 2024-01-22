programa
{
	
	funcao inicio()
	{
		inteiro valor//VALOR INFORMADO EM R$
		inteiro unidade// CASA DA UNIDADE NO VALOR
		inteiro dezena// CASA DA DEZENA NO VALOR
		inteiro centena//CASA DA CENTENA NO VALOR
		inteiro dia// DIA INFORMADO
		inteiro data//RECEBE O DIA INFORMADO REFERENTE AO MES
		inteiro vl_mes//RECEBE O MES INFORMADO
		inteiro ano//RECEBE O ANO INFORMADO
		inteiro bi//RECEBE A INFORMAÇÃO SE O ANO É BISSEXTO OU NAO
		cadeia mes = ""//RECEBE O NOME DO MES POR EXTENSO
		cadeia uni_e = ""//RECEBE O VALOR DA CASA DA UNIDADE POR EXTENSO
		cadeia dez_e = ""//RECEBE O VALOR DA CASA DA DEZENA POR EXTENSO
		cadeia cen_e = ""//RECEBE O VALOR DA CASA DA CENTENA POR EXTENSO
		cadeia vl_e = ""//RECEBE A SOMA DAS CADEIAS UNI - DEZ - CEN
		cadeia dez_a = ""//RECEBE O VALOR DA CASA DAS DEZENAS DO ONZE AO DEZENOVE

		escreva("Digite o valor do cheque: ")
		leia(valor)

		enquanto(valor < 1 ou valor >999){// VERIFICANDO SE O VALOR ESTA DENTRO DO INTERVALO PEDIDO
			escreva("Digite um valor entre R$ 1,00 e R$ 999,00: ")
			leia(valor)
		}
		escreva("Digite o ano :")
		leia(ano)
		
		enquanto(ano < 1000 ou ano > 9999){//VERIFICANDO SE O ANO É VÁLIDO
			escreva("Informe um valor válido para o ano: ")
			leia(ano)
		}
		se(ano % 4 == 0 e ano % 100 !=0 ou ano % 400 == 0){//VERIFICANDO SE O ANO É BISSEXTO
			bi = 1
			}senao{
				bi = 0
		}
		escreva("Informe o mes: ")// VERIFICANDO QUAL MES SERA ESCOLHIDO
		leia(vl_mes)

		enquanto(vl_mes < 1 ou vl_mes > 12){//TRANSFORMANDO VL MES EM CADEIA
			escreva("Digite um mês válido entre 1 e 12: ")
			leia(vl_mes)
		}
		escolha(vl_mes){
			caso 1:
				mes = "Janeiro"
				pare
			caso 2:
				mes = "Fevereiro"
				pare
			caso 3:
				mes = "Março"
				pare
			caso 4:
				mes = "Abril"
				pare
			caso 5:
				mes = "Maio"
				pare
			caso 6:
				mes = "Junho"
				pare
			caso 7:
				mes = "Julho"
				pare
			caso 8:
				mes = "Agosto"
				pare
			caso 9:
				mes = "Setembro"
				pare
			caso 10:
				mes = "Outubro"
				pare
			caso 11:
				mes = "Novembro"
				pare
			caso 12:
				mes = "Dezembro"
				pare	
		}
		escreva("Informe o dia: ")//VERIFICANDO SE O DIA ESTA CERTO CONFORME O MES
		leia(dia)

		enquanto(dia < 1 ou dia > 31){
			escreva("Digite um dia válido: ")
			leia(dia)
		}

		data = 0

		se((vl_mes == 1 ou vl_mes == 3 ou vl_mes == 5 ou vl_mes == 7 ou vl_mes == 8 ou vl_mes == 10 ou vl_mes == 12) e dia >=1 e dia <= 31){//VERIFICANDO QUAL MES FOI INFORMADO PARA DAR O PARAMETRO DOS DIAS
			data = dia
		}senao{
			se((vl_mes == 4 ou vl_mes == 6 ou vl_mes == 9 ou vl_mes == 11) e dia >=1 e dia <= 30){
				data = dia
			}senao{
				se(vl_mes == 2 e bi == 1 e dia >=1 e dia <= 29){
					data = dia	
				}senao{
					se(vl_mes == 2 e bi == 0 e dia >= 1 e dia <=28){
						data = dia
						}senao{
							se(dia<1 ou dia>28){
								escreva("Informe um dia entre 1 e 28: ")
								leia(dia)
								data = dia
								enquanto(data <1 ou data> 28){
									escreva("Informe um dia entre 1 e 28: ")
									leia(dia)
									data = dia
							}
						}
					}
				}
			}
		}
		centena = valor / 100 //PARA DESCOBRIR A CENTENA
		dezena = (valor % 100) / 10 //PARA DESCOBRIR A DEZENA
		unidade = (valor % 100) % 10 //PARA DESCOBRIR A UNIDADE

		se(centena == 1 e dezena == 0 e unidade == 0){//CASO O VALOR INFORMADO SEJA CEM
			cen_e = "cem"
			}senao{
				se(centena > 0){//DEFININDO A CENTENA
					escolha(centena){
						caso 1:
							cen_e = "cento"
							pare
						caso 2:
							cen_e = "duzentos"
							pare
						caso 3:
							cen_e = "trezentos"
							pare
						caso 4:
							cen_e = "quatrocentos"
							pare
						caso 5:
							cen_e = "quinhentos"
							pare
						caso 6:
							cen_e = "seiscentos"
							pare
						caso 7:
							cen_e = "setecentos"
							pare
						caso 8:
							cen_e = "oitocentos"
							pare
						caso 9:
							cen_e = "novecentos"
							pare
					}
				}
			}
		
		se(dezena > 0){
			se(dezena == 1 e unidade > 0){//DEFININDO DEZENA DE ONZE A DEZENOVE
				se(unidade == 1){
					dez_a = "onze"
				}senao{
					se(unidade == 2){
						dez_a = "doze"
					}senao{
						se(unidade == 3){
							dez_a = "treze"
						}senao{
							se(unidade == 4){
								dez_a = "quatorze"
							}senao{
								se(unidade == 5){
									dez_a = "quinze"
								}senao{
									se(unidade == 6){
										dez_a = "dezesseis"
									}senao{
										se(unidade == 7){
											dez_a = "dezessete"
										}senao{
											se(unidade == 8){
												dez_a = "dezoito"
											}senao{
												se(unidade == 9){
													dez_a = "dezenove"
												}
											}
										}
									}
								}
							}
						}
					}
				}
				
			}senao{
				se(dezena == 1 ){//DEZENAS DE DEZ A NOVENTA
					dez_e = "dez"
				}senao{
					se(dezena == 2 ){
						dez_e = "vinte"
					}senao{
						se(dezena == 3 ){
							dez_e = "trinta"
						}senao{
							se(dezena == 4 ){
								dez_e = "quarenta"
							}senao{
								se(dezena == 5 ){
									dez_e = "cinquenta"
								}senao{
									se(dezena == 6 ){
										dez_e = "sessenta"
									}senao{
										se(dezena == 7 ){
											dez_e = "setenta"
										}senao{
											se(dezena == 8 ){
												dez_e = "oitenta"
											}senao{
												se(dezena == 9 ){
													dez_e = "noventa"
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		se(unidade > 0 e dezena != 1){//DEFININDO A UNIDADE
			escolha(unidade){
				caso 1:
					uni_e = "um"
					pare
				caso 2:
					uni_e = "dois"
					pare
				caso 3:
					uni_e = "três"
					pare
				caso 4:
					uni_e = "quatro"
					pare
				caso 5:
					uni_e = "cinco"
					pare
				caso 6:
					uni_e = "seis"
					pare
				caso 7:
					uni_e = "sete"
					pare
				caso 8:
					uni_e = "oito"
					pare
				caso 9:
					uni_e = "nove"
					pare
			}
		}//SOMANDO AS CADEIAS
		vl_e = cen_e
		se(dezena == 1 e unidade >0){
			vl_e += " e " + dez_a
		}senao{
			se(dezena >= 1){
				vl_e += " e " + dez_e
				se(unidade > 0){
					vl_e += " e " + uni_e
				}
			}senao{
				se(unidade >= 0){
					vl_e += " e " + uni_e
				}
			}
		}
					
		escreva("Valor: R$ ",valor,"\n")
		escreva("Dia: ",data,"\n")
		escreva("Mes: ",vl_mes,"\n")
		escreva("Ano: ",ano,"\n")

		escreva("Paga-se por este cheque o valor de ",vl_e, " reais, do dia ", data, " de ", mes, " de ", ano," .")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2374; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */