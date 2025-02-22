; vamos salvar os valores dos crias que queremos deixar para usar no somatorio

LD /102
JP /00A

@ /000A
MM /102 ; 
LD /00A ; load no meu numero do endereço 00A da memoria
AD /200 ; somando 2 com esse numero
MM /00A ; guarando o valor no mesmo endereço da memoria

LD /200 ; load no numero 2 que esta no endereço 200
ML /206 ; multiplicando pelo i que esta no endereço 206
AD /202 ; somando com 1 no endereço 202
AD /204 ; somando com o valor incial da soma anterior
MM /204 ; salvando valor na propria memoria da soma anterior
LD /206 ; load no i para somar com o cria 1
AD /202 ; soma com 1 para fazer i+1
MM /206 ; guarda valor no endereço do i
SB /20A ; subtrai 64 do meu i pra ver se vai dar 0
MM /208 ; guarda resultado no endereço 208
JZ /300 ; verifica se o resultado eh zero
LD /204 ; load no valor final
JP /00A ; se nao for, volta la pra cima no começo do loop

@ /0300
HM /0300

; valores na porra dos endereços
@ /0100
K =000
K =001

@ /0200
K =002
K =001
K =001
K =001 ; valor da porra do i
K =000
K =064 ; valor para conferir final do loop

