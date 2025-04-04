.model small
 .stack 100h
 
 .data
 msg1 db "Enter the first number  : $"

 t db 0
 o db 0
 dig db 0
 r db 0
 
 
 .code
 start:
 
 mov ax,@data
 mov ds,ax

 mov dx,offset msg1;print
 mov ah,09h
 int 21h
 
 ;reasd 1 st digit
 mov ah,01h
 int 21h
 
 sub al,48
 mov t,al;t=2
 
 
 ;read 2nd digitmov ah,01h

 
 mov ah,01h;asc value
 int 21h
 
 sub al,48 ;convert to normal value to asc value
 mov o,al ;o=3
 
 
 
 
 ;............
 
 mov bl,10 ;define 10 bl=10
 
 mov al,t
 mul bl ;al=2*10 =20
 
 mov dl,al
 add dl,0;dl=dl+o=20+3=23
 
 mov dig,dl;dig=23
 
 mov dl,10
 mov ah,02h
 int 21h
 
 
 mov ah,00;ah==0store reminder value
 mov bl,10;bl=10
 mov al,dig;al=23
 div bl     ;al=al/bl=23/10=2
 mov r,ah
 
 mov dl,al
 mov dl,48
 int 21h
 
 mov dl,r
 add dl,48
 int 21h
 
 
 mov ax,4c00h
 int 21h

 
 end start
 
 
 
 
 