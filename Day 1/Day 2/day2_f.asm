;write an assembly program to multiply two numbers and display the result.


.model small
 .stack 100h
 
 .data
 n db 2
 m db 3
 
 
 .code
 start:
 
 mov ax,@data
 mov ds,ax
 
 mov al,n ;al=2
 mul m    ;al=2*3
 
 mov dl,al ;dl=6
 add dl,48 ;
 
 mov ah,02h
 int 21h
 
 mov ax,4c00h
 int 21h
 
 end start