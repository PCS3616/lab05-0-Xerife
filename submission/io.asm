; primeira coisa nessa porra do caralho que vai acontecer
; eu digitar alguma coisa no teclado

GD /000 ; pega a porra dos dois digitos primeiros
SB /100 ; subtrai 3030
MM /200 ; salva o valor no 200
GD /000 ; pega os espaços (f0daci os espaços)
GD /000 ; pega os outros 2 digitos
SB /100 ; subtrai 3030
MM /300 ; salva o valor no 300
AD /200 ; soma numeros
MM /400 ; salva soma no 400
ML /102 ; shiftando numero pra verificar se alg menos significativos eh maior ou igual a A
SB /104 ; subtraindo para ver se vai dar negativo ou zero comparando com A
JN /500 ; pula pro endereço 500 carai

; caso seja maior ou igual
LD /400 ; load na soma
SB /106 ; subtrai 00A
AD /102 ; soma 100
JP /502 ; pula filha da pula


@ /500
; se nao for maior ou igual
LD /400 ; carrega numero
AD /100 ; soma 3030
PD /100 ; imprimindo a porra do numero
HM /100


@ /0100
K /3030
K /100
K /A00
K /00A