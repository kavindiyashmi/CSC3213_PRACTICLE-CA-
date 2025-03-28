;write an assembly program to devision two numbers and display the result.


.model small
 .stack 100h
 
 .data
 n db 2
 m db 3
 r db ?                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
 
 
 .code
 start:
 
 mov ax,@data
 mov ds,ax
 
 mov ah,00
 mov al,m 
 div n  ;al=m/n=3/2 ah=1 al=1
 mov r,ah  ;r=1
 
 
 mov dl,al ;dl=1
 add dl,48 ;dl=1+48=49
 mov ah,02h
 int 21h
 
 mov dl,10  ;nextline
 mov ah,02h
 int 21h
 
 mov dl,r ;dl=1
 add dl,48
 mov ah,02h
 int 21h
 
 mov ax,4c00h
 int 21h
 
 end start