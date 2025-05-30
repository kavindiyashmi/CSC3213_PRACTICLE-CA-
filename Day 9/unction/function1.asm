.model small
.stack 100h
.data
m1 db "Enter a Number : $"
a db ?

.code
 mov ax,@data 
 mov ds,ax
 
 mov dx,offset m1
 mov ah,09h
 int 21h
 
 call read
 call newLine 
 call print
 
 mov ax,4c00h
 int 21h
   
  proc read
   mov ah,01h
   int 21h ;3
   mov a,al ;al=48+3=51
   ret
   endp
  
  proc newLine
   mov dl,10 
   mov ah,02h
   int 21h
   ret
   endp
  
   proc print
     mov dl,a
	 mov ah,02h
	 int 21h
   ret 
   endp
 
   
   end 
 
 