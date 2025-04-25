;write the asssembly program to input two single digit numbers and
;compare with number is grater

.model small
.stack 100h
.data
m1 db "Enter the  number1 : $"
m2 db "Enter the number2 : $"
m3 db "Greater $"

n1 db 0
n2 db 0

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
mov n1,dl

mov dl,10;nextline
mov ah,02h
int 21h


mov dx,offset m2;printing m2
mov ah,09h
int 21h

mov ah,01h;
int 21h

mov dl,al
sub dl,48
mov n2,dl

mov dl,10;nextline
mov ah,02h
int 21h

mov bl,n1

cmp bl,n2
jg msg1

msg1:;if
mov dx,offset m3
mov ah,09h
int 21h

mov dl,n2
add dl,48
mov ah,02h
int 21h
jmp endn

msg2:;else
mov dx,offset m3
mov ah,09h
int 21h

mov dl,bl
add dl,48
mov ah,02h
int 21h

endn:
mov ax,4c00h
int 21h

end

