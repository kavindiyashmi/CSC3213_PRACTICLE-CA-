.model small
.stack 100h
.data
m1 db "HI $"
m2 db "HELLO $"
 
 .code
 
  mov ax,@data
  mov ds,ax
  
  mov dx,offset m1
  mov ah,09h
  int 21h
  
  call newLine
  
  mov dx,offset m2
  mov ah,09h
  int 21h
  
   call newLine
   
   mov ax,4c00h
   int 21h
   
   proc newLine ;proceger this one is function
   mov dl,0ah ;use new line any name
   mov ah,02h
   int 21h
   
   ret ;return the function
   endp
   
   end 