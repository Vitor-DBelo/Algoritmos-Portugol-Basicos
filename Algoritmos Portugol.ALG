algoritmo "TrabalhoFim"
//tela de inicio
Procedimento inicializacao()
var
   tecla_pressionada: caractere
   i:inteiro
   senhaVR,usuarioVR:caracter
   proc:inteiro
inicio
   escreval ("        _.-;;-._  ")
   escreval (" '-..-'|   ||   | ")
   escreval (" '-..-'|_.-;;-._| ")
   escreval (" '-..-'|   ||   | ")
   escreval (" '-..-'|_.-''-._| ")
   escreval ("")
   escreval("  Pressione Enter para")
   escreva ("   iniciar o programa ")
   repita
      leia(tecla_pressionada)
      se tecla_pressionada = "\n" entao
         escreva("Enter pressionado!")
         interrompa
      fimse
   ate verdadeiro
   Escreval("      inicializando   ")
   timer(1000)
   para i de 1 ate 6 faca
      timer 150
      escreva (".")
      escreva (".")
      escreva (".")
      limpatela
   fimpara
   escreval("C:\> _ ")
   limpatela

   repita
      escreval("          USUARIO:  " )
      escreva("          ")
      leia(usuarioVR)
      escreval("          SENHA:"   )
      escreva("          ")
      leia (senhaVR)
      se(usuarioVR<>"Admin")e(senhaVR<>"Admin")entao
         escreval("  _______________________________ ")
         escreval(" |        Acesso negado         |")
         escreval("  ------------------------------- ")
         Escreval("")
         Escreval("Precione F9 para tentar novamente ")
      senao
         escreval("  ______________________________ ")
         escreval(" |       Acesso aprovado        |")
         escreval("  ------------------------------ ")
         Escreval("")
         proc<-1
         escreval ("Precione F9 para continuar..")
      fimse
      pausa
      limpatela
   ate (proc)=1
   limpatela
fimprocedimento
// fn da tela de inicio

//PROCEDIMENTO 1 CASO//        //calculos//
procedimento calculo()
var
   c,n1,n2:real
   rr,i:inteiro
inicio
   repita
      escreval("[1].Adição ")
      escreval ("[2].subtração")
      escreval ("[3].Mutiplicação")
      escreval ("[4].divisão")
      escreval ("[5].media de 6 notas")
      escreval ("[6].Maior e menor número")
      escreval ("[7].Sair ")
      leia (rr)
      escolha rr

      caso 1
         limpatela
         escreval ("Informe o primeiro numero")
         leia (n1)
         escreval ("informe o segundo numero ")
         leia (n2)
         c<- n1+n2
         escreval (n1,"+",n2,"=",c)
         escreval("Precione F9 para continuar...")
         pausa
         limpatela
      caso 2
         limpatela
         escreval ("Informe o primeiro numero")
         leia (n1)
         escreval ("informe o segundo numero ")
         leia (n2)
         c<-n1-n2
         escreval (n1,"-",n2,"=",c)
         escreval("Precione F9 para continuar...")
         pausa
         limpatela
      caso 3
         limpatela
         escreval ("Informe o primeiro numero")
         leia (n1)
         escreval ("informe o segundo numero ")
         leia (n2)                                        //(APERGUNTAR)AO USAR LIMPATALA APAGAR SEM DAR TEMPO
         c<-n1*n2
         Escreval (n1,"*",n2,"=",c)
         escreval ("")
         escreval("Precione F9 para continuar...")
         pausa
         limpatela
      caso 4
      limpatela
         escreval ("Informe o primeiro numero")
         leia (n1)
         escreval ("informe o segundo numero ")
         leia (n2)
         c<-n1/n2
         escreval(n1,"/",n2,"=",c)
         escreval ("Precione F9 para continuar...")
         pausa
         limpatela
      caso 5
         limpatela
         c <- calacularMedia()
         Escreval(c)
         escreval("Precione F9 para continuar...")
         pausa
         limpatela
      caso 6
         limpatela
         maiormenor()
         escreval("Precione F9 para continuar...")
         pausa
         limpatela
      fimescolha
   ate (rr)=7
   limpatela
fimprocedimento
//FIMPROCEDIMENTO//

//maior menor//
Procedimento maiormenor ()
Var
   n1,i:inteiro
   maior,menor,nt:inteiro
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc..
   maior<-0
   menor<-999999999
   para i <- 1 ate 4 passo 1 faca
      Escreval ("Informe",i,"° numeros")
      Leia (n1)
      se (maior < n1) entao
         maior <- n1
      FimSe
      se ( menor > n1)entao
         menor<-n1
      fimse
   fimpara
   Escreval("o maior informado foi ",maior," e o menor" ,menor)
fimprocedimento
//fim maior menor

//calculo media
funcao calacularMedia() : real
var
   soma, contador, N1 : inteiro
   media : real
inicio
   soma <- 0
   para contador <- 1 ate 6 passo 1 faca
      Escreva("Informe o valor: ")
      leia(N1)
      soma <- soma + N1
   FimPara
   media <- soma / 6
   retorne media
FimFuncao
//FIM CASO 5

// calculo imc
procedimento imccalc ()
var
   peso,altura,imc:real
inicio
   limpatela
   Escreval ("Digite o peço:")
   leia (peso)
   Escreval("Informe a altura:")
   leia (altura)
   imc<-peso/(altura*altura)
   se imc <18.5 entao
      Escreva ("Esta abaixo do peso ")
   senao
      se imc <=30 entao
         Escreval ("esta com sobrepeso ")                //n da tempo pra ler
      senao imc<= 40 entao
         Escreval ("Obesidade")
      Senao
         Escreval ("obesidade morbida")
      fimse
   fimse
   Escreval ("Precione F9 para continuar...")
   pausa
   limpatela
fimprocedimento
//fimprocedimento imc

//Fahrenheit 3//
procedimento fire ()
var
   Celsius, Fahrenheit: Real
inicio
   Escreva("Informe a temperatura em Celsius: ")
   Leia(Celsius)
   Fahrenheit <- (Celsius * 9 / 5) + 32
   Escreval("A temperatura em Fahrenheit é: ", Fahrenheit)
   escreval("")
   escreval ("Precione F9 para continuar...")
   pausa
   limpatela
fimprocedimento

//Game
procedimento gamer()
   Var
   NumeroAleatorio, Tentativa, Chances: Inteiro

Inicio
limpatela
   NumeroAleatorio <- Randi(100) // Gera um número aleatório entre 0 e 100
   Chances <- 5

   Escreval("      Bem-vindo ao jogo de adivinhação!")

   Enquanto Chances > 0 Faca
      Escreval("Você tem ", Chances, " chances para adivinhar o número.")
      Escreval("")
      Escreval("Digite um número: ")
      Escreval("")
      Leia(Tentativa)

      Se Tentativa = NumeroAleatorio Entao
      Escreval ("")
         Escreval("Parabéns! Você acertou o número!")
         Chances <- 0 // Encerra o loop
      Senao
      escreval("")
         Escreval("Você errou. Tente novamente.")
         Chances <- Chances - 1
      Fimse

   FimEnquanto

   Se Chances = 0 Entao
   escreval("")
      Escreva("Suas chances acabaram. O número era: ", NumeroAleatorio)
   Fimse
   escreval("")
   escreval("segure f9 para continuar...")
   pausa
   limpatela
   fimprocedimento
//fim
//seletor
procedimento seletor()
    Var
   Sexo, CorCabelo, Continuar: Caractere
   Idade, TotalHomensCastanhos, TotalMulheresLoiras: Inteiro

Inicio
limpatela
   TotalHomensCastanhos <- 0
   TotalMulheresLoiras <- 0
   Continuar <- "S"

   Enquanto Continuar = "S" Faca
      Escreval("Informe o sexo da pessoa (F - Feminino / M - Masculino): ")
      Leia(Sexo)

      Escreval("Informe a idade da pessoa: ")
      Leia(Idade)

      Escreval("Qual a cor do cabelo?")
      Escreval("[1] Preto")
      Escreval("[2] Castanho")
      Escreval("[3] Loiro")
      Escreval("[4] Ruivo")
      Leia(CorCabelo)

      Se (Sexo = "M" )E(Idade > 18) E (CorCabelo = 2) entao
         TotalHomensCastanhos <- TotalHomensCastanhos + 1
      Fimse

      Se (Sexo = "F") E (Idade >= 25) E (Idade <= 30) E (CorCabelo = 3) Entao
         TotalMulheresLoiras <- TotalMulheresLoiras + 1
      Fimse

      Escreval("Deseja continuar inserindo pessoas? [S/N]: ")
      Leia(Continuar)
   Fimenquanto

   Escreval("Total de homens com mais de 18 anos e cabelos castanhos: ", TotalHomensCastanhos)
   Escreval("Total de mulheres entre 25 e 30 anos e que são loiras: ", TotalMulheresLoiras)
   escreval("segure f9 para continuar")
   pausa
   limpatela
fimprocedimento
// fim

//ALGORTIMO PRINCIPAL//
var
   resposta:real
Inicio
   inicializacao()
   repita
      escreval("  _ __ ___   ___ _ __  _   _  ")
      escreval(" | '_ ` _ \ / _ \ '_ \| | | | ")
      escreval(" | | | | | |  __/ | | | |_| | ")
      escreval(" |_| |_| |_|\___|_| |_|\__,_| ")
      escreval("")
      Escreval("[1] Calculos ")
      Escreval("[2] Calculo imc ")
      Escreval("[3] Convertor de graus em Fahrenheit")
      Escreval("[4] Game")
      Escreval("[5] Seletor de pessoas")
      escreval("[6] Sair do programa")
      leia(resposta)
      escolha resposta
      caso 1
         limpatela
         calculo()
      caso 2
         imccalc()
      caso 3
         limpatela
         fire()
      caso 4
      Limpatela
         gamer()
      caso 5
      limpatela
       seletor()
      fimescolha
   ate (resposta)= 6
   //fimmenu
fimalgoritmo