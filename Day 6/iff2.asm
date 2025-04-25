;write the assembly program to input  a signle digit number and check if it is even or odd

.model small
.stack 100h
.data
m1 db "Enter the single digit number : $"
m2 db "Even $"
m3 db "Odd $"
n db 0

.code
mov  ax,@data
mov ds,ax

mov dx,offset m1;printing m1
mov ah,09h
int 21h

mov ah,01h;enter the number like 5
int 21h

mov dl,al
sub dl,48
mov n,dl

mov dl,10;nextline
mov ah,02h
int 21h

mov ah,00;store reminder value
mov bl,2;bl is tempory register
mov al,n
div bl ;n/2 =3/2=al=1  ah=1

cmp ah,0; 
je msg1  ; even
jne msg2 ; odd

msg1:;if
mov dx,offset m2
mov ah,09h
int 21h
jmp endn

msg2:;else
mov dx,offset m3
mov ah,09h
int 21h

endn:
mov ax,4c00h
int 21h

end