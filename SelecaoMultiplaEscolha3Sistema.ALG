Algoritmo "SelecaoMultiplaEscolha3Sistema"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 28/03/2022
Var
// Se��o de Declara��es das vari�veis 
produto, classe, tip: caractere
preco, salImp, desc, salImp2, desc2, precoF: real
pag, X: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("Digite o produto:")
leia(produto)
escreval("Digite o pre�o:")
leia(preco)

escreval("")
escreval("- Classes:")
escreval("")
escreval("I - Importado")
escreval("N - Nacional")
escreval("")
escreval("Digite a classe:")
leia(classe)

Escolha classe
        caso "I"
             escreval("")
             escreval("- Tipos:")
             escreval("")
             escreval("P - Perfume")
             escreval("I - Inform�tica")
             escreval("V - Vestu�rio")
             escreval("")
        caso "N"
             escreval("")
             escreval("- Tipos:")
             escreval("")
             escreval("I - Inform�tica")
             escreval("")
FimEscolha
        
escreval("Digite o tipo:")
leia(tip)

escreval("")
escreval("- Escolha a forma de pagamento:")
escreval("")
escreval("1 - � vista em dinheiro ou em cheque")
escreval("2 - � vista no cart�o de cr�dito")
escreval("")
escreval("Digite a forma de pagamento:")
leia(pag)

Escolha classe
        Caso "I"
             Escolha tip
                     Caso "P"
                          se (preco >= 100) entao
                             salImp <- preco * (1+5/100)
                          fimse
                     Caso "I"
                          se (preco >= 500) entao
                             salImp <- preco * (1+20/100)
                             desc <- preco * (10/100)
                             X <- 1
                          senao
                             salImp <- preco * (1+10/100)
                             desc <- preco * (10/100)
                             X <- 1
                          fimse
                     Caso "V"
                          se (preco >= 200) entao
                             salImp <- preco * (1+8/100)
                          senao
                             salImp <- preco * (1+5/100)
                          fimse
                     FimEscolha
        Caso "N"
             se (preco >= 500) entao
                salImp <- preco * (1+20/100)
             senao
                salImp <- preco * (1+12/100)
             fimse
FimEscolha

escreval("")
escreval("Valor de ", produto, " com imposto � de: R$", salImp)
se (X = 1) entao
   escreval("O valor do produto recebe 10% de desconto por ser da Classe: I e Tipo: I")
   salImp2 <- salImp - desc
   salImp <- salImp2
fimse

Escolha pag
        Caso 1
             escreval("Desconto forma de pagamento: 8%")
             desc2 <- preco * (8/100)
        Caso 2
             escreval("Desconto forma de pagamento: 5%")
             desc2 <- preco * (5/100)
        Outrocaso
             escreval("Forma de pagamento inv�lida!!")
FimEscolha

precoF <- salImp - desc2
escreval("Valor final do produto: R$", precoF)


Fimalgoritmo