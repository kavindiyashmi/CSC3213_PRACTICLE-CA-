;write the assembly program to check if a number is equal to 5.
;Display "Hi" if equal,else "Bye"

.model small
.stack 100h

.data 
m1 db "Enter the number : $"
m2 db "Hi $"
m3 db "Bye $"
n db 0
.code
mov ax,@data ;acess the data 
mov ds,ax

mov dx,offset m1;printing m1
mov ah,09h
int 21h

mov ah,01h;3+48=51;enter the number 5
int 21h

mov dl,al;dl=51 ;apita one 3 nis sub karanawa
sub dl,48;dl=51-48
mov n,dl;n=3

mov dl,10;nextline
mov ah,02h
int 21h

cmp n,5
je msg1;print hi msg number=5
jne msg2;not equal to 5 msg is lable

msg1:;if
mov dx,offset m2
mov ah,09h
int 21h

msg2:;else
mov dx,offset m3
mov ah,09h
int 21h
jmp endn ;jump the "endh" lable

endn:
mov ax,4c00h
int 21h

end