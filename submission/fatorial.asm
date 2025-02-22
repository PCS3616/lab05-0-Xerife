LD /100 ; carrega o valor no 0x100
MM /102 ; salva tambem no 0x102
SC /400 ; subrotina de verificacao de zero
SC /500 ; subrotina do fatorial
HM /000 ; finaliza codigo
LD /302 ; carrega 1
MM /102 ; coloca no 0x102
HM /000 ; finaliza codigo

@ /0020
LD /100 ; carrega valor do 0x100
MM /102 ; salva no 0x102
HM /000 ; finaliza codigo

@ /0400
K /000 ; inicio da subrotina de verificacao dos crias do ddd 021
JZ /00A ; se for 0 desloca para 0010
RS /400 ; finaliza subrotina dos crias

@ /0500
K /000 ; inicio da subrotina do fatorial dos crias do RJ
LD /102 ; carrega valor do 0x102
SB /302 ; subtrai 1
MM /102 ; salva valor no 0x102
JZ /020 ; se 0x102 == 0 faz loop para 0020
LD /100 ; carrega o valor no 0x100
ML /102 ; multiplica pelo 0x102
MM /100 ; salva valor no 0x100
JP /502 ; se expoente != 0 volta para etapa 0502

@ /0302
K =001 ; valor de i do loop
