.model small
.stack 100h
.data
 
 msg db "Hello world $"
 n db 5
.code

start:
 mov ax,@data
 mov ds,ax
 
 mov cl,n
 lstart:
 mov dx,offset msg ;FOR loop  
 mov ah,09h
 int 21h
 
 ;ADD NEXTLINE 
  
 mov dl,10  ;nextline
 mov ah,02h
 int 21h
 
 
 loop lstart
 
 mov ax,4c00h
 mov ah,02h
 int 21h
 
 end start