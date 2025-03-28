;enter the Num01 :03
;enter the Num01 :04
;enter the Num01 :07

..model small
.stack 100h
.data
   msg1 db "Enter the number1 : $"
   msg2 db "Enter the number2 : $"
   msg3 db "Total  number1 and number2 : $"
   n1 db 0
   n2 db 0
   n3 db 0

.code
start:

mov ax,@data
mov ds,ax

mov dx,offset msg1
mov ah,09h
int 21h

mov ah,01h ;3 al=48+3=51
int 21h

mov dl,al  ;al=51 dl=51
sub dl,48  ;dl=51-48=3

mov n1,dl  ;n1=3

mov dl,10 ;nextline
mov ah,02h

mov dx,offset msg2 ;print the msg 2
mov ah,09h
int 21h

mov ah,01h ;read input 2
int 21h

mov dl,al ;al=2+48=50 dl=50
sub dl,48 ;dl=
mov n2,dl

mov dl,10 ;nextline
mov ah,02h
int 21h

mov dx,offset msg3
mov ah,09h
int 21h

mov dl,n1 ;d1 =3
add dl,n2 ;d1=3+2=5
add dl,48;d1=5+48=53

mov ah,02h
int 21h

mov 4c00h
int 21h



end start 



