;write an assembly language program to read two one digit interger from the user,and do the arithmetic operations as follows in the output

 .model small
 .stack 100h
 
 .data
 
 msg1 db "Enter the first number  : $"

 msg2 db "Enter the second number : $"

 msg3 db "The addition is  :$"

 msg4 db "The subtraction is  :$"

 msg5 db "The multiplication is  :$"

 msg6 db "The diviion quotient is  :$"

 msg7 db "The diviion reminder is  :$"
 n1 db 0;store no
 n2 db 0
 n3 db 0
 n4 db 0
 n5 db 0
 n6 db 0
 n7 db 0
 
 
 .code
 start:
 
 mov ax,@data
 mov ds,ax
 
 mov dx,offset msg1;print
 mov ah,09h
 int 21h
 
 mov ah,01h;n1=3 read input no 1
 int 21h

 mov dl,al;asc to number
 sub dl,48
 mov n1,dl
 
 mov dl,0ah;nextline
 mov ah,02h
 int 21h
 
 ;...................................
 
 mov dx,offset msg2;print
 mov ah,09h
 int 21h
 
 mov ah,01h;n1=3 read input no 1
 int 21h

 mov dl,al;asc to number
sub dl,48
 mov n2,dl
 
 mov dl,0ah
 mov  ah,02h
 int 21h
 
 ;....................................add..........
mov dx,offset msg3;print
mov ah,09h
int 21h

 
 mov dl,n1 ;n1=3,dl=3
 add dl,n2 ;dl=dl +n2;3+2=5
 add dl,48 ;dl=dl+48=5+48=53 ;change asc value 

 mov ah,02h
int 21h


 mov dl,0ah
 mov ah,02h
 int 21h
 

 
;............sub...........

mov dx,offset msg4;print
mov ah,09h
int 21h

 mov dl,n1
 sub dl,n2  
 add dl,48 
 
 mov ah,02h
 int 21h
 
 mov dl,0ah
 mov ah,02h
 int 21h
 
 
 
 ;.......mul.......
 
mov dx,offset msg5;print
mov ah,09h
int 21h

 mov al,n1
 mul n2 
 mov dl,al
 add dl,48

 mov ah,02h
 int 21h
 
 mov dl,0ah
 mov ah,02h
 int 21h
 
 
 
 
 
 ;........div..............
 
mov dx,offset msg6;print
mov ah,09h
int 21h
 
 mov ah,00
 mov al,n1
 div n1  
 mov n7,ah  
 
 
 mov dl,al 
 add dl,48
 
 mov ah,02h
 int 21h
 
 mov dl,0ah ;nextline
 mov ah,02h
 int 21h
 ;................
 
 mov dx,offset msg7;print
mov ah,09h
int 21h
 
 mov dl,n7
 add dl,48
 mov ah,02h  
 int 21h 
 
mov ax,4c00h
int 21h
 
 end start
 